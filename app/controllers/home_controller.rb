include RequestHelper

class HomeController < ApplicationController

  def index
    @listGenres = get_request("https://api.themoviedb.org/3/genre/movie/list?language=en")
    @listMovies = get_request("https://api.themoviedb.org/3/movie/popular?language=en-US&page=1")
  end
end