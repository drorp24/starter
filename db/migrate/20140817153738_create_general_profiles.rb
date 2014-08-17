class CreateGeneralProfiles < ActiveRecord::Migration
  def change
    create_table :general_profiles do |t|
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
