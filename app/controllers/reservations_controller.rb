class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all 
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end

  def create
    room = Room.find(params[:room_id])
    total_price = (Date.parse(params[:end_date]) - Date.parse(params[:start_date]) + 1).to_i * room.price

    @reservation = Reservation.new(
      user_id: params[:user_id],
      room_id: params[:room_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: room.price,
      total: total_price
    )
    if @reservation.save
      render :show
    else
      render json: {errors: @reservation.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    room = Room.find(params[:room_id])
    total_price = (Date.parse(params[:end_date]) - Date.parse(params[:start_date]) + 1).to_i * room.price
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.user_id = params[:user_id] || @reservation.user_id
    @reservation.room_id = params[:room_id] || @reservation.room_id
    @reservation.start_date = params[:start_date] || @reservation.start_date
    @reservation.end_date = params[:end_date] || @reservation.end_date
    @reservation.total = total_price
    if @reservation.save
      render :show
    else
      render json: {errors: @reservation.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    render json: {message: "Reservation cancelled"}
  end
end
