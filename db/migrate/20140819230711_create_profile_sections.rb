class CreateProfileSections < ActiveRecord::Migration
  def change
    create_table :profile_sections do |t|
      t.integer :user_profile_id
      t.string :section_type
      t.integer :section_id

      t.timestamps
    end
  end
end
