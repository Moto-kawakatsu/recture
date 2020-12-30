class DiariesController < ApplicationController

    def new
        @diary = Diary.new
        # @diaries = Diary.all
        @user = User.find(params[:user_id])
        @diaries = @user.diaries.order("created_at DESC")
    end

    def create
        @diary = Diary.new(diary_params)
        if @diary.save
          redirect_to new_user_diary_path(current_user.id)
        else
          redirect_to new_user_diary_path(current_user.id)
        end
    end

    def count_words
        # @diaries = Diary.find(params[:id])
    end

    def show
        @diary = Diary.new
        # @diaries = Diary.all
        @user = User.find(params[:user_id])
        @diaries = @user.diaries.order("created_at DESC")
        @diary = Diary.find(params[:id])
        
    end

    def destroy
        @user = User.find(params[:user_id])
        @diaries = @user.diaries
        @diaries.each do |diary|
        if diary.destroy
           return redirect_to root_path
        else
           render :new
        end
    end
    end

    private

    def diary_params
        params.require(:diary).permit(:writing, :title, :user_id).merge(user_id: current_user.id)
    end
end
