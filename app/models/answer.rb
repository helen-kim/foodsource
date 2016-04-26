class Answer < ActiveRecord::Base

	before_save :set_time_answered

	# Relationships
	belongs_to :question
	has_many :comments

	# Validations

	validates_presence_of :text, :question_id 

	def set_time_answered
		self.time_answered = Time.now
	end
end
