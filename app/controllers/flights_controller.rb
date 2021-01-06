class FlightsController < ApplicationController


  skip_before_action :verify_authenticity_token, raise: false


  def new
  # for the form#with
  @flight = Flight.new

  end

  def create
    flight = Flight.new flight_params


    redirect_to flight_path(74) #redirect to flights showpage




  end

  def index

    headers['Access-Control-Allow-Origin'] = '*'
    render json: Flight.all
  end

  def show
    @flight = Flight.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end



  private
  def flight_params
  params.require(:flight).permit(:flightNumber, :origin, :date, :destination, :id)
   end

end
