class UsersController < ApplicationController
  def drivers
    @bookings = current_user.bookings
  end
end
