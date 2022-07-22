class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reservations = Reservation.where(user_id: current_user.id)
  end
end
