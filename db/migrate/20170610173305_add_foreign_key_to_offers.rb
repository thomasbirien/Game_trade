class AddForeignKeyToOffers < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :offers, :users
  end
end
