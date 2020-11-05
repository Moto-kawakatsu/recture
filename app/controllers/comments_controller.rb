class CommentsController < ApplicationController
    
  def index    
    @messages = Message.all
    @room = Room.all
    @message = Message.find(params[:id])
    
  end

  def new
    @message = Message.find(params[:message_id])
    @comments = @message.comments.order("created_at DESC")
    @comment = Comment.new
    @messages = Message.all
    @room = Room.all
  end

  def create
     @message = Message.find(params[:message_id])
     @comment = @message.comments.new(comment_params)
    if @comment.save
      redirect_to new_message_comment_path(@message)
    else
      redirect_to new_message_comment_path(@message)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @message = @comment.message
    if @comment.destroy
       redirect_to new_message_comment_path(@message)
    else
       @comments = @message.comments.order("created_at DESC")
       render :new
    end       
  end
    
      private
      def comment_params
        params.require(:message).permit(:text).merge(user_id: current_user.id, message_id: params[:message_id])
      end
end
