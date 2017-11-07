class AddColumnToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :user_id, :integer
    add_column :offers, :game_exchange_id, :integer
  end
end
