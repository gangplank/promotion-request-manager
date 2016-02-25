class PromoRequest < ActiveRecord::Base
  has_many :promo_channel_promo_requests
  has_many :promo_channels, through: :promo_channel_promo_requests
  belongs_to :gangplank_location
end
