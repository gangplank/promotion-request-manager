class PromoRequest < ActiveRecord::Base
  has_many :promo_channel_promo_requests
  has_many :promo_channels, through: :promo_channel_promo_requests
  belongs_to :gangplank_location
  belongs_to :gangplank_initiative

  validates_presence_of :event_name, :gangplank_initiative, :gangplank_location, :organizer_name, :organizer_email, :event_privacy

end
