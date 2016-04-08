class Answer < ActiveRecord::Base

	# Relationships
	belongs_to :question
	has_many :comments

	# Validations
	validates_presence_of :text, :question_answered 

end
