class CreatePromoChannelPromoRequests < ActiveRecord::Migration
  def change
    create_table :promo_channel_promo_requests, id: false do |t|
      t.integer :promo_channel_id
      t.integer :promo_request_id
    end
  end
end
