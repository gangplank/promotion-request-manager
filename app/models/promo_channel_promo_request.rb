class PromoChannelPromoRequest < ActiveRecord::Base
  belongs_to :promo_channel
  belongs_to :promo_request
end
