class MoviesController < ApplicationController

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_p)
		@movie.save

		redirect_to @movie
	end

	def index
		@movies = Movie.released
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		@movie.update(movie_p)

		redirect_to @movie
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy

		redirect_to @movie
	end

private

	def movie_p
		params.require(:movie).permit!
	end
end
