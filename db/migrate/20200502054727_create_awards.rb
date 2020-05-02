class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.string :title
      t.string :description
      t.integer :amount
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
