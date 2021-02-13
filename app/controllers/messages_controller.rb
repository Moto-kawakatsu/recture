class MessagesController < ApplicationController
  def index
    @comment = Comment.new
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user).order("created_at DESC")
    @users = @room.users.order("student_number ASC")
    @tasks = @room.tasks
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

  def students
    @users = User.all
  end

  def create
    @room = Room.find(params[:id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

  def destroy
    @room = Room.find(params[:room_id])
    @message = Message.find(params[:id])    
    if @message.destroy
      return redirect_to room_messages_path(@message.room)
    else
       render :new
    end
   end

  def list 
    @users = User.all.order("class_number ASC").order("student_number ASC")
    @ids = current_user.diary_ids

    # １学年用
    @users_num11 = User.all.where(grade:1, class_number: 1)
    @users_num12 = User.all.where(grade:1, class_number: 2)
    @users_num13 = User.all.where(grade:1, class_number: 3)
    @users_num14 = User.all.where(grade:1, class_number: 4)
    @users_num15 = User.all.where(grade:1, class_number: 5)
    @users_num16 = User.all.where(grade:1, class_number: 6)

    # 2学年用
    @users_num21 = User.all.where(grade:2, class_number: 1)
    @users_num22 = User.all.where(grade:2, class_number: 2)
    @users_num23 = User.all.where(grade:2, class_number: 3)
    @users_num24 = User.all.where(grade:2, class_number: 4)
    @users_num25 = User.all.where(grade:2, class_number: 5)
    @users_num26 = User.all.where(grade:2, class_number: 6)

    # 2学年用
    @users_num31 = User.all.where(grade:3, class_number: 1)
    @users_num32 = User.all.where(grade:3, class_number: 2)
    @users_num33 = User.all.where(grade:3, class_number: 3)
    @users_num34 = User.all.where(grade:3, class_number: 4)
    @users_num35 = User.all.where(grade:3, class_number: 5)
    @users_num36 = User.all.where(grade:3, class_number: 6)

  end

  def levelup
    @users = User.all
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
