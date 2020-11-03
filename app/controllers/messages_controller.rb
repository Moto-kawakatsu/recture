class MessagesController < ApplicationController
  def index
    @comment = Comment.new
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user).order("created_at DESC")
    @users = @room.users.order("student_number ASC")
  end
  
  def new
    @comment = Comment.new
  end
  
  def show
    @comment = Comment.new
    @comments = @message.comments.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end


  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
