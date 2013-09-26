class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		movie_update = params.require(:movie).permit!
		@movie.update(movie_update)

		redirect_to @movie
	end
end
