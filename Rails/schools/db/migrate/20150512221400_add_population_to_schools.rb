class AddPopulationToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :population, :integer
  end
end
