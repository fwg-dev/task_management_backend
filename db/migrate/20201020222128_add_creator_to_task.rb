class AddCreatorToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :creator, :string
  end
end
