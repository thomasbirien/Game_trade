class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.text :comment
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
