class AddFineToPoints < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :fine, foreign_key: true
  end
end
