class PodcastsController < ApplicationController

  def index
    # binding.pry
    @podcasts = Podcast.where(playlist_id: params[:playlistid])
    # @podcasts_likes = Podcast.all.includes(:like).as_json(include: {like: { only: []}})
    render json: @podcasts, root: false
  end

  # def show
  #   @podcast = Podcast.find(params[:id])
  #   render json: @podcast
  # end
end