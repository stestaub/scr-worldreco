class HomepageController < ApplicationController
  def index
    @registration = Registration.new
  end
end
