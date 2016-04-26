class VotesController < ApplicationController
  def vote_up
    @answer = Answer.find(params[:id])
    @vote = @answer.votes.create(:user_id => current_user.id, :polarity => 1)
  end
end