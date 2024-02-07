class Api::V0::LocationInformationController < ApplicationController

  def index
    render json: { message: "Hello world"}
  end

  def information
    require 'pry'; binding.pry
    render json: {
      lat: params[:lat],
      lon: params[:lon]
    }
  end


end