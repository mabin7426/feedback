class FeedbacksController < ApplicationController

	http_basic_authenticate_with :name => "kellogg", :password => "kellogg"

	def index
		sort_direction = params["sortby"]
		if sort_direction == nil
			sort_direction = "asc"
		end
		@comments = Comment.order("fname #{sort_direction}").limit(100)
		    # @movies = Movie.order("title #{sort_direction}").limit(100)

	end

	def new
	end

	def create
		@comment = Comment.new
		@comment.fname = params[:fname]
		@comment.good = params[:good]
		@comment.bad = params[:bad]
		@comment.notes = params[:notes]
		@comment.save
		redirect_to "/feedbacks"
	end

	def show
		@comment = Comment.find_by_id(params[:id])
	end

	def edit
		@comment = Comment.find_by_id(params[:id])
	end

	def update
		@comment = Comment.find_by_id(params[:id])
		@comment.fname = params[:fname]
		@comment.good = params[:good]
		@comment.bad = params[:bad]
		@comment.notes = params[:notes]
		@comment.save
		redirect_to "/feedbacks"
	end

	def destroy
		@comment = Comment.find_by_id(params[:id])
		@comment.destroy
		redirect_to "/feedbacks"
	end


end
