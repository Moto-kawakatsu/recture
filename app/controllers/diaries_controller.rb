class DiariesController < ApplicationController
    def index
        @user = current_user
        @diaries = @user.diaries.order("created_at DESC")
    end

    def new
        @user = current_user
        @diary = Diary.new
    end

    def create
        @diary = Diary.new(diary_params)
        if @diary.save
          redirect_to root_path
        else
          redirect_to root_path
        end
    end
    private

    def diary_params
        params.require(:diary).permit(:writing, :user_id).merge(user_id: current_user.id)
    end
end
