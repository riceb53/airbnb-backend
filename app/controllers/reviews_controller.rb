class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end
  
  def create
    review = Review.new(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
      )

    if review.save
      render json: {message: "Thank you for your review. We appreciate your feedback!"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:name] || @user.name
  #   @user.email = params[:email] || @user.email
  #   @user.password = params[:password] || @user.password
  #   @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
  #   if @user.save
  #     render :show
  #   else
  #     render json: {error: @user.errors.full_messages}, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @user = User.find_by(id: params[:id])
  #   @user.destroy
  #   render json: {message: "User account deleted"}
  # end

end
