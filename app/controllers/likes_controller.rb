class LikesController < ApplicationController

  def index
    # binding.pry
    @podcasts = Podcast.where(playlist_id: params[:playlistid])
    #loop through podcasts, for each search all the likes with the current
    #user id and podcast id
    @likes = @podcasts.select do |podcast|
      Like.find_by(podcast_id: podcast.id, user_id: current_user.id)
    end
    # @podcasts_likes = Podcast.all.includes(:like).as_json(include: {like: { only: []}})
    render json: @likes, root: false
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
    head :ok, content_type: "text/html"

    
    # if login(params[:name], params[:password])
    #   session = current_user.create_session
    #   render json: session

  end

  def destroy
    token = request.headers["HTTP_AUTHORIZATION"]
    session = Session.find_by(current_user.id)
    session.destroy
    head :ok, content_type: "text/html"
  end

end