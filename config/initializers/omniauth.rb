
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '129153737232382', '94c02a3b980a69edbb66d767bd5034bd'
  provider :google, '289303544917.apps.googleusercontent.com', 'EonZskS619qP3H0N1eAfwcuI'
  provider :linkedin, "d3h7yso8gji7", "m5VbSVB2xBfnOiuJ"
end

