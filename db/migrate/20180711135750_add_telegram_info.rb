class AddTelegramInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :telegram_bot_data, :jsonb, default: {}
  end
end
