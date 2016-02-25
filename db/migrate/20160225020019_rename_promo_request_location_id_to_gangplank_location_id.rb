class RenamePromoRequestLocationIdToGangplankLocationId < ActiveRecord::Migration
  def change
    rename_column :promo_requests, :location_id, :gangplank_location_id
  end
end
