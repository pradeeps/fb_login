OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1477418045830693", "229aedb0870e50581b6f62411382e6a7"

end