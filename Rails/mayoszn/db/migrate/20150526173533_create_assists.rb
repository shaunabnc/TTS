class CreateAssists < ActiveRecord::Migration
  def change
    create_table :assists do |t|
      t.string :message
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
