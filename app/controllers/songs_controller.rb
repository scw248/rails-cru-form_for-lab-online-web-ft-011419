class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def show
    song
  end

  def edit
    song
  end

  def update
    song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
  
end
