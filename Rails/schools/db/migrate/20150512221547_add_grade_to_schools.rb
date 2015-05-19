class AddGradeToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :grade, :text
  end
end
