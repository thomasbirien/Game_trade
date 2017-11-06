class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :civility, :string
    add_column :users, :post_code, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :phone_number, :string
  end
end
