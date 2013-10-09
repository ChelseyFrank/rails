class MoviesController < ApplicationController

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_p)
		if @movie.save
			redirect_to @movie
		else
			render :new
		end
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
		if @movie.update(movie_p)
			redirect_to @movie
		else
			render :edit
		end
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
