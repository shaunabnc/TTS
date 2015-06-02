class AddValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :position, :string
    add_column :users, :year, :string
    add_column :users, :school, :string
    add_column :users, :city, :string
  end
end
