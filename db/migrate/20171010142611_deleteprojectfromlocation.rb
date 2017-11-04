class Deleteprojectfromlocation < ActiveRecord::Migration[5.1]
  def change
  	remove_column :locations, :project_id
  end
end
