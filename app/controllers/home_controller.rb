require "uri"
require "net/http"

class HomeController < ApplicationController

  def index
    # url = URI("https://api.themoviedb.org/3/genre/movie/list?language=en")
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true

    # request = Net::HTTP::Get.new(url)
    # request["accept"] = "application/json"
    # request["Authorization"] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZGU0N2EyMmRhYzQ1MTI1ZGZlMzg1MTc4YWFjMjQwZSIsInN1YiI6IjY0ZWI3NTU4NDU4MTk5MDEwMDk5NGQ4YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GKXypMptPrGCv3UyoBeMIbiBfmZJxE4S3P5x9E_MYVs"

    # response = http.request(request)
    # result = response.read_body

    url = URI("https://api.themoviedb.org/3/movie/popular?language=en-US&page=1")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["accept"] = "application/json"
    request["Authorization"] = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZGU0N2EyMmRhYzQ1MTI1ZGZlMzg1MTc4YWFjMjQwZSIsInN1YiI6IjY0ZWI3NTU4NDU4MTk5MDEwMDk5NGQ4YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.GKXypMptPrGCv3UyoBeMIbiBfmZJxE4S3P5x9E_MYVs"

    response = http.request(request)
    result = JSON.parse(response.read_body)
    @listMovies = []
    result["results"].each do |movie|
      @listMovies.push({
        :title => movie["original_title"],
        :description => movie["overview"],
        :rating => movie["vote_average"],
        :year => movie["release_date"][0, 4],
        :image => "https://image.tmdb.org/t/p/w500#{movie["poster_path"]}"
      })
    end
  end
end
