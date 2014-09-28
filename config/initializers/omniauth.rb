OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'FB_APP_CODE', 'FB_SECRET_CODE',  {:client_options => {:ssl => {:verify => false}}}
end