Devise.setup do |config|
  config.secret_key = '3f28e721f073c0c4481b5c00970238eadcb7498dca4f40c129c0f52473f2e946563a265c8e28ab6e34031f5f83e7e97e2f2dcfe7640620632c554f7945efdd93'

  config.mailer_sender = 'everpresent team <no-reply@everpresent.io>'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 8..72

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end
