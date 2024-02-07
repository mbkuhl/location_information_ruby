class Api::V0::LocationInformationController < ApplicationController

  def index
    render json: { message: "Hello world"}
  end

end