class MessagesController < ApplicationController
  
  def create
  end

  def new
    @message = Message.new
  end
  
  private
    
    def message_params
      params.require(:message).permit(
        :content,
        :email,
        :name,
        :subject
      )
    end
end
