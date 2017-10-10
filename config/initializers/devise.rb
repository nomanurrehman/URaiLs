Devise.setup do |config|

  config.mailer_sender = 'URaiLs <your-username@gmail.com>'

  require 'devise/orm/active_record'

  config.http_authenticatable = false

  config.http_authenticatable_on_xhr = true

  config.paranoid = true

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 12

  config.pepper = 'a13afec1d9c1514ec4d698786253cc3b71edc5dec91602d3b81b24a4c0925a03780875b999ddcf5b622f43bd418b99a199dc2943201cd1cee3d932bcf29b8324'

  config.send_email_changed_notification = true

  config.send_password_change_notification = true

  config.allow_unconfirmed_access_for = 0.days

  config.confirm_within = 7.days

  config.reconfirmable = true

  config.confirmation_keys = [:email]

  config.remember_for = 2.weeks

  config.expire_all_remember_me_on_sign_out = true

  config.extend_remember_period = false

  config.password_length = 8..64

  config.email_regexp = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  config.timeout_in = 30.minutes

  config.lock_strategy = :failed_attempts

  config.unlock_keys = [:email]

  config.unlock_strategy = :email

  config.maximum_attempts = 5

  config.last_attempt_warning = true

  config.reset_password_keys = [:email]

  config.reset_password_within = 24.hours

  config.sign_in_after_reset_password = false

  config.sign_out_via = :delete
  
end
