Rails.application.config.session_store :cookie_store, key: '_telegram_bot_app_session'
Rails.application.config.telegram_updates_controller.session_store = :file_store, Rails.root.join('tmp', 'session_store')
