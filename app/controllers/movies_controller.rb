include RequestHelper

class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ index show edit update destroy ]

  def index
  end

  def show
  end

  def rent
  end

  private

  def set_movie
    @movie = get_request("https://api.themoviedb.org/3/movie/#{params[:id]}?language=en-US")
  end
end
