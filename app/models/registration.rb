class Registration < ActiveRecord::Base
  validate :time_slots_not_same
  validates :email, :phonenumber, :first_name, :last_name, presence: true
  validates_uniqueness_of :email, scope: [:first_name, :last_name], message: "Sie scheinen sich bereits angemeldet zu haben"

  def time_slots_not_same
    if self.timeslot1 == self.timeslot2 ||
      self.timeslot1 == self.timeslot3 ||
      self.timeslot2 == self.timeslot3
      self.errors[:base] << ("Sie können nicht zwei mal die gleiche Uhrzeit wählen")
    end
  end
end
