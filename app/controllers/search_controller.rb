class SearchController < ApplicationController

def search
  if params[:q].nil?
    @search_movies = []
  else
    @search_movies = Movie.search params[:q]
  end
end

end
