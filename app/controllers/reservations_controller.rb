class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.where(user_id: current_user.id)
  end

  def new
    @reservation = Reservation.new
    @stations = Station.all
  end

  def create
    @reservation = Reservation.create(reservation_params)
    if @reservation.save
      # flash[:success] = "資格の作成に成功しました。"
      redirect_to reservations_path
    else
      render "new"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_number, :date, :time, :station_id, :user_id, :address, :latitude, :longitude)
  end
end
