class RepliesController < ApplicationController
    def new
        @diary = Diary.find(params[:diary_id])
        @user = @diary.user
        @diaries = @user.diaries.order("created_at DESC")
        @reply = Reply.new
    end

    def create
        @diary = Diary.find(params[:diary_id])
        @reply = Reply.new(reply_params)
        if @reply.save
          redirect_to new_diary_reply_path(@diary)
        else
          render :new
        end        
    end

    def destroy
      @diary = Diary.find(params[:diary_id])
      @reply = Reply.find(params[:id])
      if @reply.destroy
        redirect_to new_diary_reply_path(@diary,@reply)
      else
        redirect_to root_path
      end
    end

    private

    def reply_params
        params.require(:reply).permit(:reply_text).merge(user_id: current_user.id, diary_id: @diary.id)
    end
end
