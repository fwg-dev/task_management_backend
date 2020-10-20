class Api::V1::ProjectsController < ApplicationController
  def index
    projects = Project.all
    # render json: categories
    render json: ProjectSerializer.new(projects)
  end

#    def create 
#     # /task_params check if there is a new project name 
#     # /if there is a new project name, create project and get the id 
#     # /task params project_id = created project_id 

#     # if new
#     puts task_params
#     byebug
#     task = Task.new(task_params)
#     # byebug
#     if task.save
#       render json: TaskSerializer.new(task), status: :accepted
#       # render json: task, status: :accepted

#     else 
#       render json: {errors: task.errors.full_messages}, status: :unprocessable_entity
#     end
#   end 

# private
#   def task_params 
#     params.require(:task).permit(:title, :deadline, :creator, :completed, :project_id)
#   end
  

end
