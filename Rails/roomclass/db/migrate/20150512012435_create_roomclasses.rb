class CreateRoomclasses < ActiveRecord::Migration
  def change
    create_table :roomclasses do |t|
      t.string :student
      t.text :teacher
      t.text :pet

      t.timestamps null: false
    end
  end
end
