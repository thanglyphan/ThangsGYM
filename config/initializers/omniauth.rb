OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1142606515770070', '621e07a704b0333f12679d979b2f3758', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end