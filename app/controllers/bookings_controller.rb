class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    render :index
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    render :show
  end

  def create
    @booking = Booking.new(
      clown_id: params[:clown_id],
      customer_id: params[:customer_id],
    )
    @booking.save
    render :show
  end

  def update
    @booking = Booking.find_by(id: params[:id])
    @booking.clown_id = params[:clown_id] || @booking.clown_id
    @booking.customer_id = params[:customer_id] || @book.customer_id

    @booking.save
    render :show
  end

  def destroy
    @booking = Booking.find_by(id: params[:id])
    @booking.destroy
    render json: {message: "booking as been destroyed successfully"}
  end

end
