class CreateMentorProfiles < ActiveRecord::Migration
  def change
    create_table :mentor_profiles do |t|
      t.string :title
      t.integer :profile_id
      t.string :profile_type

      t.timestamps
    end
  end
end
