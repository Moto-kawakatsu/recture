class RepliesController < ApplicationController
    def new
        # @user = User.find(params[:id])
        @diary = Diary.find(params[:diary_id])
        @reply = Reply.new
        # @diaries = @user.diaries.order("created_at DESC")
     
    end

    def create
        @reply = Reply.new(reply_params)
        if @reply.save!
          redirect_to root_path
        else
          redirect_to root_path
        end        
    end

    private

    def reply_params
        params.require(:reply).permit(:reply_text, :user_id, :diary_id).merge(user_id: current_user.id, diary_id: @diary.id)
    end
end
