class CreatePromoChannels < ActiveRecord::Migration
  def change
    create_table :promo_channels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
