OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :evernote, ENV["evernote_api_key"], ENV["evernote_api_secret"]
  provider :amazon, ENV["amazon_api_key"], ENV["amazon_api_secret"]
  provider :facebook, ENV["facebook_api_key"], ENV["facebook_api_secret"]
  provider :twitter, ENV["twitter_api_key"], ENV["twitter_api_secret"]
  provider :google_oauth2, ENV["google_api_key"], ENV["google_api_secret"]
  provider :douban, ENV["douban_api_key"], ENV["douban_api_secret"]
  provider :weibo, ENV["weibo_api_key"], ENV["weibo_api_secret"]
  provider :identity, :fields => [:email], :on_failed_registration => UsersController.action(:new)
end
