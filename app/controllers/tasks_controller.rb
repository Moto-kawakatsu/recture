class TasksController < ApplicationController
    def index
      @room = Room.find(params[:room_id])
      @tasks = @room.tasks
    end

    def new
        @room = Room.find(params[:room_id])
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @room = Room.find(params[:room_id])
        if @task.save
            redirect_to room_tasks_path(@room)
        else
            redirect_to room_tasks_path(@room)
        end
    end


    def edit
        @room = Room.find(params[:room_id])
        @task = Task.find(params[:id])
        # if @task.edit(task_params)
        #     redirect_to room_tasks_path(@room)
        # else
        #     render :new
        # end
    end
    
    def update
        @room = Room.find(params[:room_id])
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to room_tasks_path(@room)
        else
            render :new
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @room = Room.find(params[:room_id])
        if @task.destroy
          redirect_to room_tasks_path(@room)
        else
            render :new
        end
    end

    private
    
    def task_params
        @room = Room.find(params[:room_id])
        params.require(:task).permit(:title, :room_id).merge(room_id: @room.id)
    end
        
    def exam_params
        params.require(:exam).permit(:term, :subject, :score, :considering, :grade_num, :user_id).merge(user_id: current_user.id)
    end

  end
