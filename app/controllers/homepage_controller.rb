class HomepageController < ApplicationController
  def index
    @message = Message.new
  end

  def impressum
  end
end
