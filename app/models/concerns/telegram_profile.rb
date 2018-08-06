module TelegramProfile
  extend ActiveSupport::Concern

  included do
    jsonb_accessor :telegram_bot_data,
                   telegram_token: :string,
                   telegram_chat_id: :integer

    before_create :generate_telegram_token

    scope :by_telegram_token, ->(token) { telegram_bot_data_where(telegram_token: token) }
  end

  def generate_telegram_token
    self.telegram_token = SecureRandom.hex(6)
  end
end
