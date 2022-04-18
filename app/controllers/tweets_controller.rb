class TweetsController < ApplicationController
  def index
    tweets = Tweet
              .get_by_user(params[:user_username])
              .get_cronologically

    render json: tweets.all
  end

  private

  def permitted_params
    params.permit(:user_username)
  end
end
