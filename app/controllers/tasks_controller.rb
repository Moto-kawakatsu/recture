class TasksController < ApplicationController
    # impressionist :actions=> [:show]

    def index
      @room = Room.find(params[:room_id])
      @tasks = @room.tasks
    end

    def new
        @room = Room.find(params[:room_id])
        @tasks = @room.tasks
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @room = Room.find(params[:room_id])
        if @task.save
            redirect_to new_room_task_path(@room)
        else
            @room = Room.find(params[:room_id])
            @tasks = @room.tasks
            render :new
        end
    end

    def edit
        @room = Room.find(params[:room_id])
        @task = Task.find(params[:id])
    end
    
    def update
        @room = Room.find(params[:room_id])
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to new_room_task_path(@room)
        else
            render :new
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @room = Room.find(params[:room_id])
        if @task.destroy
          redirect_to new_room_task_path(@room)
        else
            render :new
        end
    end

    def show
        @room = Room.find(params[:room_id])
        @task = Task.find(params[:id])
        impressionist(@task, nil, unique: [:ip_address])
    end

    private
    
    def task_params
        @room = Room.find(params[:room_id])
        params.require(:task).permit(:title, :task_content, :deadline, :room_id).merge(room_id: @room.id)
    end
  end
