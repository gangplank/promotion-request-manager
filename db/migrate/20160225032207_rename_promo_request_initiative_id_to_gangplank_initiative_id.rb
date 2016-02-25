class RenamePromoRequestInitiativeIdToGangplankInitiativeId < ActiveRecord::Migration
  def change
    rename_column :promo_requests, :initiative_id, :gangplank_initiative_id
  end
end
