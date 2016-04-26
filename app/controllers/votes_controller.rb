class VotesController < ApplicationController
  def vote_up
    @post = Post.find(params[:id])
    @vote = @post.votes.create(:user_id => current_user.id, :polarity => 1)
  end
end