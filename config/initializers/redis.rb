if ENV["REDISCLOUD_URL"] && Rails.env.production?
  uri = URI.parse(ENV["REDISTOGO_URL"])
  $redis = Redis.new(:url => uri)
else
  $redis = Redis.new(:url => "http://127.0.0.1:6379")
end