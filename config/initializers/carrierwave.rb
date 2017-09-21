CarrierWave.configure do |config|

  #if Rails.env.development?
    # config.storage = :file
  if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  elsif Rails.env.development? || Rails.env.production?
    config.fog_provider = 'fog/aws'                        # required
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],     # required
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"], # required
      region:                'us-east-1'                   # optional, defaults to 'us-east-1'
    }
    config.storage = :fog
    config.fog_directory  = ENV["AWS_S3_BUCKET"]           # required
    config.fog_public     = true                           # optional, defaults to true
    # config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
  end

end