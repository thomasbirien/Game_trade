class AddColumnToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :user_id, :integer
  end
end
