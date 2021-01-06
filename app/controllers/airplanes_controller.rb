class AirplanesController < ApplicationController

  def new
    @airplane = Airplane.new

  end

  def create
    airplane = Airplane.create airplane_params

    redirect_to airplane_path(airplane.id)
     #redirect to flights showpage
  end

  def index
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Airplane.all
  end

  def show
    headers['Access-Control-Allow-Origin'] = '*'

    @airplane = Airplane.find params[:id]
    render json: @airplane
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def airplane_params
  params.require(:airplane).permit(:name, :rows, :integer, :columns)
   end
end
