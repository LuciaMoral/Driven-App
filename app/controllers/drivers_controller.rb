class DriversController < ApplicationController
  def index
    if params[:query]
      @drivers = Driver.search_by_location(params[:query])
    else
      @drivers = Driver.all
    end
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(strong_params)
    @driver.user = current_user

    if @driver.save
      redirect_to driver_path(@driver)
    else
      render :new
    end
  end

  def destroy
    @driver = Driver.find params [:id]
    @driver.destroy
    redirect_to user_path(@driver.user.id)
  end

  private

  def strong_params
    params.require(:driver)
          .permit(:name, :license_type, :years_driving, :transmission, :photo)
  end
end
