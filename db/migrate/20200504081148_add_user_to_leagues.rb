class AddUserToLeagues < ActiveRecord::Migration[5.2]
  def change
    add_reference :leagues, :user, foreign_key: true
  end
end
