class PlaylistsController < ApplicationController

  def index
    @playlist = Playlist.where(mood_id: params[:moodid])
    render json: @playlist
  end

end