class AuthByTelegramToken
  prepend SimpleCommand

  def initialize(token, chat_id)
    @token = token
    @chat_id = chat_id
  end

  def call
    user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.by_telegram_token(token)
    if user
      user.update(telegram_chat_id: chat_id)
      return user
    end
    errors.add :user, 'not_found'
    nil
  end
end
