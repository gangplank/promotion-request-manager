json.array!(@promo_requests) do |promo_request|
  json.extract! promo_request, :id, :event_name, :description, :location_id, :promo_image_uri, :initiative_id, :organization_name, :organizer_email, :is_space_reserved, :event_privacy, :is_free, :registration_url, :press_release_uri
  json.url promo_request_url(promo_request, format: :json)
end
