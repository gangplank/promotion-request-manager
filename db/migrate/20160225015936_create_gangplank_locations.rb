class CreateGangplankLocations < ActiveRecord::Migration
  def change
    create_table :gangplank_locations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
