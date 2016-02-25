class RenamePromoRequestOrganizationNameToOrganizerName < ActiveRecord::Migration
  def change
    rename_column :promo_requests, :organization_name, :organizer_name
  end
end
