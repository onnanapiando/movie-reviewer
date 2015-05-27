class SearchController < ApplicationController
  before_action :search

def search

    @search_movies = Movie.search params[:q]

end

end
