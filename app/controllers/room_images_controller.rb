class RoomImagesController < ApplicationController
  def index
    @room_images = RoomImage.all 
    render :index
  end

  def show
    @room_image = RoomImage.find_by(id: params[:id])
    render :show
  end

  def create
    @room_image = RoomImage.new(
      room_id: params[:room_id],
      url: params[:url]
    )
    if @room_image.save
      render :show
    else
      render json: {errors: @room_image.errors.full_messages}, status: :bad_create
    end
  end

  def update
    @room_image = RoomImage.find_by(id: params[:id])
    @room_image.room_id = params[:room_id] || @room_image.room_id
    @room_image.url = params[:url] || @room_image.url
    if @room_image.save
      render :show
    else
      render json: {errors: @room_image.errors.full_messages}, status: :bad_create
    end
  end

  def destroy
    @room_image = RoomImage.find_by(id: params[:id])
    @room_image.destroy
    render json: {message: "Image successfully deleted"}
  end
end
