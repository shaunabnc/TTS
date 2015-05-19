class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :City
      t.string :country
      t.text :description

      t.timestamps null: false
    end
  end
end
