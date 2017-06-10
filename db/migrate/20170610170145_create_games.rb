class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :plateforme
      t.string :release_date
      t.string :picture
      t.integer :owner_id

      t.timestamps
    end
    add_foreign_key :games, :users, column: :owner_id
  end
end
