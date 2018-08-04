module TelegramProfile
  extend ActiveSupport::Concern

  jsonb_accessor :telegram_bot_data,
                 name: :string,
                 price: [:integer, store_key: :p],
                 price_in_cents: :integer,
                 reviewed_at: :datetime
end

