class CreateGangplankInitiatives < ActiveRecord::Migration
  def change
    create_table :gangplank_initiatives do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
