class AddActiveToSprints < ActiveRecord::Migration[5.2]
  def change
    add_column :sprints, :active, :integer
  end
end
