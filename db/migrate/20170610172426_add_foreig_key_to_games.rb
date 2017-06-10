class AddForeigKeyToGames < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :games, :users, column: :owner_id
  end
end
