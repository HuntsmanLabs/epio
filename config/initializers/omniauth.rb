Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_KEY_PROD"], ENV["TWITTER_SECRET_PROD"]
  provider :facebook, ENV["FACEBOOK_ID_PROD"], ENV["FACEBOOK_SECRET_PROD"], scope: 'email,publish_actions'
end

OmniAuth.config.on_failure = Proc.new do |env|
	ConnectionsController.action(:omniauth_failure).call(env)
end