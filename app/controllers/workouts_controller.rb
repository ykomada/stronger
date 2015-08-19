class WorkoutsController < ApplicationController

def index
end

def new
	@workout = Workout.new
	@lift = Lift.new
end

def create
	@workout = Workout.new(params[:workout])
	@workout.save

	@lift = Lift.new(params[:lift])
	@lift.workout_id = @workout.id
	@lift.save

	redirect_to @workout
end

def show
	@workout = Workout.find(params[:id])

end

end
