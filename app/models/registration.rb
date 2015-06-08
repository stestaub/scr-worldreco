class Registration < ActiveRecord::Base
  validate :time_slots_not_same
  validates :email, :first_name, :last_name, presence: true
  validate :validate_phone_number
  validates_uniqueness_of :email, scope: [:first_name, :last_name], message: "Du scheinst dich bereits angemeldet zu haben."
  validates :confirm_age, acceptance: { accept: true, message: "Du musst mindestens 18 Jahre alt sein, um teilnehmen zu können." }
  validates :accept_agb, acceptance: { accept: true, message: "Bitte lese und akzeptiere die Teilnahmebedingungen." }

  def self.count_per_timeslot
    sql = "SELECT extract(hour FROM date_trunc('hour', timeslot1))::int AS hour_stump
                ,(extract(minute FROM timeslot1)::int / 15) AS min15_slot
                ,count(*)
          FROM   registrations
          GROUP  BY 1, 2
          ORDER  BY 1, 2;"
    timeslots = ActiveRecord::Base.connection.execute(sql)
    time_grid = (0..8).collect { |i| [0, 0, 0, 0]  }
    timeslots.each do |row|
      time_grid[row['hour_stump'].to_i - 12][row['15min_slot'].to_i] = row['count'].to_i
    end
    time_grid
  end

  def time_slots_not_same
    if self.timeslot1 == self.timeslot2 ||
      self.timeslot1 == self.timeslot3 ||
      self.timeslot2 == self.timeslot3
      self.errors[:timeslots] << ("Du kannst nicht mehrmals die gleiche Uhrzeit wählen.")
    end
  end

  private
    def validate_phone_number
      if self.phonenumber.blank? && self.mobile_number.blank?
        self.errors.add(:phonenumber, 'Gib bitte mindestens eine Telefonnummer an')
      end
    end
end
