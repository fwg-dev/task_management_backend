class Api::V1::TasksController < ApplicationController
 # GET/ tasks
 def index
  tasks = Task.all 
  # render json: tasks
  render json: TaskSerializer.new(tasks)

  # options = {
  #   # inlcude associated project
  #   include: [:project]
  # }
  # to add a relationship in serializer
  # render json: ProjectSerializer.new(tasks, options)

end 
#GET/ tasks/1

# def show 
#   render json: @task
# end

# POST/task
def create 
  task = Task.new(task_params)
  # byebug
  if task.save
    render json: TaskSerializer.new(task), status: :accepted
    # render json: task, status: :accepted

  else 
    render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
  end
end 

# SHOW 

def show
  task = Task.find_by(id: params[:id])
  render json: task
end


# PATCH/PUT /task/1

def update
  if @task.update(task_params)
    render json: @task
  else
    render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
  end
end

#DELETE/ tasks/1

def destroy
# byebug
  @task = Task.find_by_id(params[:id])
  @task.destroy
end 

private
def task_params 
  params.require(:task).permit(:title, :deadline, :creator, :completed, :project_id)
end


end

