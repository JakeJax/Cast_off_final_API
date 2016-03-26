class PlaylistssController < ApplicationController

  def show
    request.headers["HTTP_PODCASTID"]
    @like = Like.find(params[:podcast_id])
    render json: @like
  end

end