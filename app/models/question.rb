class Question < ActiveRecord::Base

	# Relationships
	has_many :answers
	has_many :comments, through: :answers

	validates_presence_of :expertise, :ingredients 

end
