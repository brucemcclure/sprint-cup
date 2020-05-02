class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :title
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
