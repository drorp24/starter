class CreateMentorProfiles < ActiveRecord::Migration
  def change
    create_table :mentor_profiles do |t|
      t.string :title
      t.integer :mentor_profile_id
      t.string :mentor_profile_type

      t.timestamps
    end
  end
end
