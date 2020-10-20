class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :deadline, :creator, :completed, :project_id, :project
  #belongs_to project
end
