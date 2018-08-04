class AuthByTelegramToken
  prepend SimpleCommand
  attr_accessor :token, :chat_id

  def initialize(token, chat_id)
    @token = token
    @chat_id = chat_id
  end

  def call
    user
  end

  private

  def user
    user = User.by_telegram_token(token).first
    if user
      user.update(telegram_chat_id: chat_id)
      return user
    end
    errors.add :user, 'not_found'
    nil
  end
end
