class HomepageController < ApplicationController
  def index
    @registration = Registration.new
    @registration_counts = Registration.count_per_timeslot
  end
end
