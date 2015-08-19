class Lift < ActiveRecord::Base
  attr_accessible :reps, :sets, :weight, :id, :workout_id, :exercise_id

  belongs_to :exercise
  belongs_to :workout
  
end
