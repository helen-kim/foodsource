class Question < ActiveRecord::Base

	before_save :set_time_posted
	
	# Relationships
	has_many :answers
	has_many :comments, through: :answers

	validates_presence_of :expertise, :ingredients 


	private

	def set_time_posted
		self.time_posted = Time.now
	end
end

