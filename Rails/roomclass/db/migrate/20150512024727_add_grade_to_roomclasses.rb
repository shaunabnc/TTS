class AddGradeToRoomclasses < ActiveRecord::Migration
  def change
    add_column :roomclasses, :grade, :string
  end
end
