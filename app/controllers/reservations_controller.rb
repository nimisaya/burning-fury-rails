class ReservationsController < ApplicationController
  def new
  end

  def create
    reservation = Reservation.create reservation_params

    redirect_to reservation_path(reservation.id)
     #redirect to flights showpage

  end

  def index
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Reservation.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def reservation_params
  params.require(:reservation).permit(:row, :column, :user_id, :flight_id)
   end
end
