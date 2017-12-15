class MoviesController < ApplicationController

  def create
    p current_user
  end

  def index
    @u = User.friendly.find(params[:user_id])
    @movies = @u.movies.sorted_list
  end

  def new

    render 'movies/new'
  end

  def show
    u = User.friendly.find(params[:user_id])
    @movie = u.movies.friendly.find(params[:id])
    render 'movies/show'
  end

end
