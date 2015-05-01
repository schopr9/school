CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "schopra",
    aws_secret_access_key: "alpha123",
    region: 'us-west-2'
  }
  config.fog_directory = "uploads"
end