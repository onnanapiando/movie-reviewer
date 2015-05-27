class SearchController < ApplicationController
def search

    @search_movies = Movie.search params[:q]

end

end
