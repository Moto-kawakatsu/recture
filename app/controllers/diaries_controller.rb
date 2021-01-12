class DiariesController < ApplicationController

    def new
        @diary = Diary.new
        @user = User.find(params[:user_id])
        @users = User.all
        @diaries = @user.diaries.order("created_at DESC")
    end

    def create
        @diary = Diary.new(diary_params)
        if @diary.save
          redirect_to new_user_diary_path(current_user.id)
        else
          @user = User.find(params[:user_id])
          @diaries = @user.diaries.order("created_at DESC")
          render :new
        end
    end

    def destroy
        @diary = Diary.find(params[:id])
        @user = @diary.user
        if @diary.destroy
            redirect_to new_user_diary_path(@user)
        else
            redirect_to root_path
        end
    end

    def show
        @diary = Diary.find(params[:id])
        @user = @diary.user
        @diaries = @user.diaries
        @bar_chart = @diaries
        @vocabulary = @diaries.where(study_content: "単語")
        @grammar = @diaries.where(study_content: "文法")
        @speaking = @diaries.where(study_content: "スピーキング")
        @listening = @diaries.where(study_content: "リスニング")
        @writing = @diaries.where(study_content: "ライティング")
        @reading = @diaries.where(study_content: "リーディング")
    end

    private

    def diary_params
        params.require(:diary).permit(:writing, :title, :study_content, :study_time, :user_id).merge(user_id: current_user.id)
    end
end
