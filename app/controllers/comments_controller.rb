class CommentsController < ApplicationController
    
  def index    
    @messages = Message.all
    @room = Room.all
    # @comments = @messages.comments.include(:user)
  end

  def new
    @comment = Comment.new
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user).order("created_at DESC")
  end

  def create
     if @comment = Comment.create(comment_params)
        redirect_to root_path

     end
  end
    
      private
      def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id], room_id: params[:room_id])
      end
end
