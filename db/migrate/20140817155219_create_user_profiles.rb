class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.integer :profile_id
      t.string :profile_type

      t.timestamps
    end
  end
end
