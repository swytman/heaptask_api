class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private

  attr_reader :headers

  def user
    @user ||= User.find_by(id: decoded_auth_token[:user_id]) if decoded_auth_token
    @user || errors.add(:token, 'invalid token') && nil
  end

  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  rescue StandardError
    nil
  end

  def http_auth_header
    return headers['Authorization'].split(' ').last if headers['Authorization'].present?
    errors.add(:token, 'missing token')
    nil
  end
end
