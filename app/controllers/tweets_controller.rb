class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweet = current_user.tweets.build
    @tweets = current_user.tweets.order('created_at DESC')
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = current_user.tweets.build 
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    @tweet.save
    redirect_to action: 'index'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end
end
