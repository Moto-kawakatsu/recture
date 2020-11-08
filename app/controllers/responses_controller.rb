class ResponsesController < ApplicationController

    def new
        @comment = Comment.find(params[:comment_id])
        @response = Response.new
        @responses = @comment.responses.order("created_at DESC")
        @room = Room.all
    end

    def create
        @comment = Comment.find(params[:comment_id])
        @response = @comment.responses.new(response_params)
        if @response.save
          redirect_to new_comment_response_path(@comment)
        else
          redirect_to new_comment_response_path(@comment)
        end
    end

   def destroy
        @response = Response.find(params[:id])
        @comment = @response.comment
        if @response.destroy
          redirect_to new_comment_response_path(@comment)
        else
          redirect_to new_comment_response_path(@comment)
        end       
   end

    private
    def response_params
        params.require(:response).permit(:response_text).merge(user_id: current_user.id, comment_id: params[:comment_id])
    end

end
