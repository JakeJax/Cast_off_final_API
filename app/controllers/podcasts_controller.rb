class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
    # @podcasts_likes = Podcast.all.includes(:like).as_json(include: {like: { only: []}})
    render json: @podcasts, root: false
  end

  def show
    @podcast = Podcast.find(params[:id])
    render json: @podcast
  end
end