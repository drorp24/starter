class CreateStartupProfiles < ActiveRecord::Migration
  def change
    create_table :startup_profiles do |t|
      t.string :role

      t.timestamps
    end
  end
end
