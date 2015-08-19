class Workout < ActiveRecord::Base
   attr_accessible :id, :title, :body

  has_many :lifts

  has_many :exercises, through: :lifts

  
end
