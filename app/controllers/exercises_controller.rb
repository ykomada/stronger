class ExercisesController < ApplicationController

	def index
		@exercises = Exercise.all
	end

	def new
	end

	def create
		@exercise = Exercise.new(params[:exercise])

		@exercise.save
		redirect_to @exercise
	end

	def show 
		@exercise = Exercise.find(params[:id])
	end

	def destroy
		@exercise = Exercise.find(params[:id])

		@exercise.destroy
		redirect_to @exercise
	end

	def edit
		@exercise = Exercise.find(params[:id])
	end

	def update
		@exercise = Exercise.find(params[:id])

		if @exercise.update_attributes(params[:exercise])
			redirect_to @exercise
		else
			render 'edit'
		end
	end
		
end

