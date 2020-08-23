require 'date'

class ReviewsController < ApplicationController

    def index
        reviews = Review.all 
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(
            name: params[:name],
            review: params[:review],
            date_created: DateTime.now
        )
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end

    private

    def review_params
        params.require(:review).permit([:name, :review])
    end

end
