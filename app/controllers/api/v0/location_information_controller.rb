class Api::V0::LocationInformationController < ApplicationController

  def index
    render json: { message: "Hello world"}
  end

  def information
    render json: LocationInformationFacade.get_info(params[:lat], params[:lon])
  end
end