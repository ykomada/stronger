class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.references :exercise
      t.references :workout

      t.timestamps
    end
    add_index :lifts, :exercise_id
    add_index :lifts, :workout_id
  end
end
