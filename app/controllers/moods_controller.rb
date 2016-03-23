class MoodsController < ApplicationController
  def index
    @moods = Mood.all
    render json: @moods, root: false
  end

  def show
    @mood = Mood.find(params[:id])
    render json: @mood
  end
end