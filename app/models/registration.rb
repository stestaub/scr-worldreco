class Registration < ActiveRecord::Base
  validate :time_slots_not_same
  validates :email, :phonenumber, :first_name, :last_name, presence: true
  validates_uniqueness_of :email, scope: [:first_name, :last_name], message: "Sie scheinen sich bereits angemeldet zu haben"
  validates :confirm_age, acceptance: true #{ accept: 1, message: "Sie müssen mindestens 18 sein um Teilnehmen zu können." }
  validates :accept_agb, acceptance: true #{ accept: 1, message: "Bitte lesen und akzeptieren sie die Teilnahmebedingungen" }

  def time_slots_not_same
    if self.timeslot1 == self.timeslot2 ||
      self.timeslot1 == self.timeslot3 ||
      self.timeslot2 == self.timeslot3
      self.errors[:timeslots] << ("Sie können nicht mehrmals die gleiche Uhrzeit wählen")
    end
  end
end
