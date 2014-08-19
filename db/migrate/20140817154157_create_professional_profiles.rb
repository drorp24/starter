class CreateProfessionalProfiles < ActiveRecord::Migration
  def change
    create_table :professional_profiles do |t|
      t.integer :user_id
      t.string :position

      t.timestamps
    end
  end
end
