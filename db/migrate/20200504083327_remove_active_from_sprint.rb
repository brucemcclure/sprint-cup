class RemoveActiveFromSprint < ActiveRecord::Migration[5.2]
  def change
    remove_column :sprints, :active, :boolean
  end
end
