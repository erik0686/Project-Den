class AddLocationToProject < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :location_id, :integer, foreign_key: true, index: true
  end
end
