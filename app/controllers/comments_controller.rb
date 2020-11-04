class CommentsController < ApplicationController
    
  def index    
    @messages = Message.all
    @room = Room.all
    @message = Message.find(params[:id])
    
  end

  def new
    
    @comments = Comment.new
    @messages = Message.all
    @message = Message.find(params[:message_id])
    @room = Room.all
  end

  def create
     @message = Message.find(params[:message_id])
     @comment = @message.comments.new(comment_params)
    if @comment.save
      redirect_to root_path
    end
  end
    
      private
      def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id], room_id: params[:room_id])
      end
end
