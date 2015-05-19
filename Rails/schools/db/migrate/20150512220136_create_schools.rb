class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :student
      t.text :teacher
      t.boolean :pet

      t.timestamps null: false
    end
  end
end
