class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :primary_area
      t.string :secondary_area

      t.timestamps
    end
  end
end
