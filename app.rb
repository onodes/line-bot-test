require 'bundler/setup'
require 'json'
require 'httpclient'

http_client = HTTPClient.new
endpoint_uri = 'https://trialbot-api.line.me/v1/events'

http_client.post_content(endpoint_uri, content_json,
        'Content-Type' => 'application/json; charset=UTF-8',
        'X-Line-ChannelID' => ENV["LINE_CHANNEL_ID"],
        'X-Line-ChannelSecret' => ENV["LINE_CHANNEL_SECRET"],
        'X-Line-Trusted-User-With-ACL' => ENV["LINE_CHANNEL_MID"]
        )
