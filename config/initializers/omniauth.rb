
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, '129153737232382', '94c02a3b980a69edbb66d767bd5034bd'
    provider :google, '289303544917.apps.googleusercontent.com', 'EonZskS619qP3H0N1eAfwcuI'
    provider :linkedin, "d3h7yso8gji7", "m5VbSVB2xBfnOiuJ"

  elsif Rails.env.production?
    provider :facebook, '	419485418142958', 'b873a077ef00a048e8f804bc1f3a233f'
    provider :google, '289303544917.apps.googleusercontent.com', 'EonZskS619qP3H0N1eAfwcuI'
    provider :linkedin, "d3h7yso8gji7", "m5VbSVB2xBfnOiuJ"

  end

end

