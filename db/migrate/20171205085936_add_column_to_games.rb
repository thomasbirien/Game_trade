class AddColumnToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :date_of_purchase, :datetime
  end
end
