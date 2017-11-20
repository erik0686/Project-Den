class RemoveLocationFromProject < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :location_id
  end
end
