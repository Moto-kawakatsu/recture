class ExamsController < ApplicationController

        def new
            @exam = Exam.new
            @user = User.find(params[:user_id])
            @exams_first_mid = Exam.all.where(term:"１学期中間").order("subject ASC")
            @exams_first_end = Exam.all.where(term:"１学期期末").order("subject ASC")
            @exams_second_mid = Exam.all.where(term:"２学期中間").order("subject ASC")
            @exams_second_end = Exam.all.where(term:"２学期期末").order("subject ASC")
            @exams_third = Exam.all.where(term:"学年末").order("subject ASC")
        end
    
        def create
            @user = User.find(params[:user_id])
            @exam = Exam.new(exam_params)
            if @exam.save
              redirect_to new_user_exam_path(@user)
            else
              @user = User.find(params[:user_id])
              @exams_first_mid = Exam.all.where(term:"１学期中間") 
              @exams_first_end = Exam.all.where(term:"１学期期末")
              @exams_second_mid = Exam.all.where(term:"２学期中間")
              @exams_second_end = Exam.all.where(term:"２学期期末")
              @exams_third = Exam.all.where(term:"学年末")
              render :new
            end
        end
    
        def destroy
            @exam = Exam.find(params[:id])
            @user = @exam.user
            if @exam.destroy
                redirect_to new_user_exam_path(@user)
            else
                redirect_to root_path
            end
        end
    
        private
    
        def exam_params
            params.require(:exam).permit(:term, :subject, :score, :considering, :grade_num, :user_id).merge(user_id: current_user.id)
        end
    end