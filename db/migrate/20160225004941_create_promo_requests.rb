class CreatePromoRequests < ActiveRecord::Migration
  def change
    create_table :promo_requests do |t|
      t.string :event_name
      t.text :description
      t.integer :location_id
      t.string :promo_image_uri
      t.integer :initiative_id
      t.string :organization_name
      t.string :organizer_email
      t.boolean :is_space_reserved
      t.string :event_privacy
      t.boolean :is_free
      t.string :registration_url
      t.string :press_release_uri

      t.timestamps null: false
    end
  end
end
