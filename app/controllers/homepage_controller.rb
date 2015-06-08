class HomepageController < ApplicationController
  def index
    @message = Message.new
  end
end
