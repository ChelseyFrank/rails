class MoviesController < ApplicationController

	def new
		@movie = Movie.new
	end

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
		movie_p = params.require(:movie).permit!
		@movie.update(movie_p)

		redirect_to @movie
	end
end
