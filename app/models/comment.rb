class Comment < ActiveRecord::Base

	# Relationships
	belongs_to :answer
	has_one :question, through: :answer

	# Validations
	validates_presence_of :answer_id, :comment

end
