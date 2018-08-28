class AlbumsController < ApplicationController
  def index
    @album = Album.all
  end
  def show
    @album = Album.find(params[:id])
  end
  def new
  end
  def edit
  end
  def create
    @album = Album.new(album_params)
    @album.save
    redirect_to @album
  end
  def update
  end
  def destroy
  end

private
  def album_params
    params.require(:album).permit(:title, :artist_name, :year)
  end



end
