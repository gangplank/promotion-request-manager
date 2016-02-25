class AddStartEndDateToPromoRequests < ActiveRecord::Migration
  def change
    add_column :promo_requests, :start_datetime, :datetime
    add_column :promo_requests, :end_datetime, :datetime
  end
end
