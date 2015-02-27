class MessagesController < ApplicationController
  def create
    @message = Message.new message_params
    if @message.save
      render 'show'
    else
      render 'homepage/index'
    end
  end

  def message_params
    params.require(:message).permit(:first_name,
                                         :last_name,
                                         :email,
                                         :phone,
                                         :message, :subject)
  end
end
