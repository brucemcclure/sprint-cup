class AddActiveToSprint < ActiveRecord::Migration[5.2]
  def change
    add_column :sprints, :active, :boolean
  end
end
