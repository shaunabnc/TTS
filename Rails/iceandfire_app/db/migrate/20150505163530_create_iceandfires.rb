class CreateIceandfires < ActiveRecord::Migration
  def change
    create_table :iceandfires do |t|
      t.string :title
      t.string :book
      t.boolean :purchased
      t.integer :pages
      t.string :current
      t.integer :page
      t.date :finish

      t.timestamps null: false
    end
  end
end
