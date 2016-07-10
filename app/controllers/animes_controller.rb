class AnimesController < ApplicationController
  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(whitelist)
    if @anime.save
      flash[:success] = "#{@anime.title} has been added to the list!"
      redirect_to root_path
    else
      flash.now[:danger] = "Something went wrong! Check the required fields."
      render new_anime_path
    end
  end

  def update
  	@anime = Anime.find(params[:id])
    if @anime.update(whitelist)
      flash[:success] = "#{@anime.title} has been updated!"
      redirect_to root_path
    else
      flash.now[:danger] = "Something went wrong! Check the required fields."
      render 'edit'
    end
  end

  def index
  	@anime = Anime.all
  end

  def show
  	@anime = Anime.find(params[:id])
    redirect_to edit_anime_path(params[:id])
  end

  def edit
  	@anime = Anime.find(params[:id])
  end

  def destroy
    @anime = Anime.find(params[:id])
    flash[:success] = "#{@anime.title} has been deleted!"
    @anime.destroy
    redirect_to root_path
  end

  private 

  def whitelist
    params.require(:anime).permit(:title, :director, :year,
                                  :about, :link, :image, :length)
  end
end
