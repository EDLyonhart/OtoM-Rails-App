class SongController < ApplicationController

  before_action :find_song, only: [:edit, :show, :update, :destroy]
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
  end

  def edit
  end

  def create
    Song.create song_params
    redirect_to songs_path
  end

  def update
    @song.update_attributes song_params
    redirect_to @song
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
  def song_params
    params.require(:song).permit(:title)
  end

  def musician_params
    params.require(:musician).permit(:name)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
