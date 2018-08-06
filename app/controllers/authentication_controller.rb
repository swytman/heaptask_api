class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      render json: AuthenticationSerializer.new(command.result).as_json, stauts: :ok
    else
      render json: { errors: command.errors }, status: :unauthorized
    end
  end
end
