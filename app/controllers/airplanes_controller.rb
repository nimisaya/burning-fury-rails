class AirplanesController < ApplicationController
  def new
  end

  def create
  end

  def index
    headers['Access-Control-Allow-Origin'] = '*'
    render json: Airplane.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
