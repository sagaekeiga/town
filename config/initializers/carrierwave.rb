CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESSKEY'],
    aws_secret_access_key: ENV['SECRETACCESSKEY'],
    region: 'ap-northeast-1'
  }
  config.cache_storage = :fog

  # S3のURLに直アクセス禁止
  # config.fog_public = false

  # S3のURLに有効期限を60秒で設定する
  # config.fog_authenticated_url_expiration = 60

  # S3バケットを指定
  config.fog_directory  = 'test-town'
end

# 日本語入力を可能にするため。
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/