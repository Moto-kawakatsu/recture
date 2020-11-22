class MessagesController < ApplicationController
  def index
    @comment = Comment.new
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user).order("created_at DESC")
    @users = @room.users.order("student_number ASC")
  end
  
  def new
    @room = Room.find(params[:room_id])
    @comment = Comment.new
    @message = Message.new
  end
  
  def show
    @comment = Comment.new
    @message = Message.new
    @comments = @message.comments.includes(:user)
  end

  def create
    @room = Room.find(params[:id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      redirect_to room_messages_path(@room)
    end
  end

  def destroy
    @room = Room.find(params[:room_id])
    @messages = @room.messages
    @messages.each do |message|
    if message.destroy
       return redirect_to room_messages_path(message.room)
    else
       render :new
    end
  end       
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
