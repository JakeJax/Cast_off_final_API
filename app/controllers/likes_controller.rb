class LikesController < ApplicationController

  def index
    # binding.pry
    if params[:playlistid]
      @podcasts = Podcast.where(playlist_id: params[:playlistid])
    #loop through podcasts, for each search all the likes with the current
    #user id and podcast id
      @likes = @podcasts.select do |podcast|
        Like.find_by(podcast_id: podcast.id, user_id: current_user.id)
      render json: @likes, root: false
      end
    else
      @podcasts = Podcast.all
      @likes = @podcasts.select do |podcast| 
        Like.find_by(user_id: current_user.id, podcast_id: podcast.id)
      end
      @likeImages = @likes.map do |like|
        Playlist.find(like.playlist_id).image
      end
      render json: {likes: @likes, likeImages: @likeImages}, root: false
    end
    # @podcasts_likes = Podcast.all.includes(:like).as_json(include: {like: { only: []}})
    
  end



  def show
    request.headers["HTTP_PODCASTID"]
    @like = Like.find(params[:podcast_id])
    render json: @like
  end

  def create
    token = request.headers["HTTP_AUTHORIZATION"]
    session = Session.find_by(authentication_token: token)
    @user = session.user
    @podcast = Podcast.find(params[:podcastid])
    @like = Like.new(user_id: @user.id, podcast_id: @podcast.id)
    @like.save
    render json: @like


  end

  def destroy
    @podcast = Podcast.find(params[:podcastid])
    @like = Like.find_by(podcast_id: @podcast.id, user_id: current_user.id)
    @like.destroy
    head :ok, content_type: "text/html"
  end

end