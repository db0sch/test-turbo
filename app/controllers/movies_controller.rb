class MoviesController < ApplicationController

  def index
    @movie = Movie.new
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      @movies = Movie.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end
end
