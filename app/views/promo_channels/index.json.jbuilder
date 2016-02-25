json.array!(@promo_channels) do |promo_channel|
  json.extract! promo_channel, :id, :name
  json.url promo_channel_url(promo_channel, format: :json)
end
