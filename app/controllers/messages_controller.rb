class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
  end
  
  def create
    @message = Message.new
    @message.save
    redirect_to root_path, notice: 'メッセージを送信しました'
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  
  end

  
end
