class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :plateforme
      t.string :picture
      t.integer :owner_id
      t.string :condition
      t.text :comment

      t.timestamps
    end
  end
end
