class ApplicationController < ActionController::API
  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    command = AuthorizeApiRequest.call(request.headers)
    @current_user = command.result
    Rails.logger.info( command.result)
    render json: { errors: command.errors }, status: 401 unless @current_user
  end
end
