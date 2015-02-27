class Message < ActiveRecord::Base
  validates :message, :name, :email, presence: true
end
