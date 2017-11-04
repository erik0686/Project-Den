class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :max_capacity
      t.text :description
      t.string :status
      t.date :start_date
      t.date :end_date
      t.text :profile

      t.timestamps
    end
  end
end
