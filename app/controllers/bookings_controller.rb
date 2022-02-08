class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    set_driver
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    set_driver
    @booking.driver = @driver
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @driver = @booking.driver
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    driver = @booking.driver
    @booking.destroy
    redirect_to driver_path(driver)
  end

  private

  def set_driver
    @driver = Driver.find(params[:driver_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
