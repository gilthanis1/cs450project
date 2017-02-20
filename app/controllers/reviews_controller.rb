class ReviewsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@reviews = Review.all.order(:created_at)
	end

	def show
		@review = Review.find(params[:id])
	end

	def new
		@review = Review.new
	end

	def create
		@review = current_user.reviews.build(review_params)
		if @review.save
			flash[:success] = "Review Posted"
			redirect_to user_path
		else
			redirect_to user_path, alert: "Error Creating Review"
		end
	end

	def update
		@review = current_user.reviews.find(params[:id])
		if @review.update(review_params)
			flash[:success] = "Review Updated"
			redirect_to user_path
		else
			redirect_to user_path, alert: "Error Updating Review"
		end
	end

	def destroy
		@review = current_user.reviews.find(params[:id])
		if @review.destroy
			flash[:success] = "Review Deleted"
			redirect_to user_path
		else
			redirect_to user_path, alert: "Error Deleting Review"
		end
	end

	protected
	def review_params
		params.require(:review).permit(:rev_stmnt)
	end

end
