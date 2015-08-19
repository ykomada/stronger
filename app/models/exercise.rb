class Exercise < ActiveRecord::Base
  attr_accessible :name, :primary_area, :secondary_area

  has_many :lifts

  has_many :workouts, through: :lifts

def name_for_select
	name.capitalize
end
  
end
