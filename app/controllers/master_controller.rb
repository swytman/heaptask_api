class MasterController < ApplicationController
  def token
    render json: {status: true}
  end
end