class AddProjectToLocation < ActiveRecord::Migration[5.1]
  def change
  	add_column :locations, :project_id, :integer, foreign_key: true, index: true
  end
end
