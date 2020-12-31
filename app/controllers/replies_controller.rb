class RepliesController < ApplicationController
    def new
        @diary = Diary.find(params[:diary_id])
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
      @reply = Reply.find(params[:id])
      if @reply.destroy
        redirect_to root_path
      else
        redirect_to root_path
      end
    end

    private

    def reply_params
        params.require(:reply).permit(:reply_text).merge(user_id: current_user.id, diary_id: @diary.id)
    end
end
