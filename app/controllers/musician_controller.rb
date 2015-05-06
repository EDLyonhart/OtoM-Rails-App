class MusicianController < ApplicationController

  before_action :find_musician, only: [:edit, :show, :update, :destroy, :add_song, :remove_song]

  def index
    @musician = Musician.all
  end

  def new
    @musician = Musician.new
  end

  def show
  end

  def edit
  end

  def update
    @musician.update_attributes musician_params
    if @musician.save
      redirect_to "/musician/#{@musician.id}"
    else
      render :edit
    end
  end

  def destroy
    musician.destroy
    redirect_to '/musician'
  end

  def create
    @musician = Musician.new user_params
    if @musician.save
      redriect_to '/'
    else
      render :new
    end
  end

  def add_song
    song = Song.find(song_params[:id])
    unless @musician.include? song
      @musician.songs << song
    end
    redirect_to @musician
  end

  def remove_song
    @musician.songs.delete(song)
    redirect_to @musician
  end



  private
  def musician_params
    params.require(:musician).permit(:name)
  end

  def song_params
    params.require(:song).permit(:title)
  end

  def find_musician
    @musician = Musician.find(params[:id])
  end

end
