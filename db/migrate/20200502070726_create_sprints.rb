class CreateSprints < ActiveRecord::Migration[5.2]
  def change
    create_table :sprints do |t|
      t.string :title
      t.datetime :deadline
      t.string :meeting_point
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
