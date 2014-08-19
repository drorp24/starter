class CreateMentorProfileBusinesses < ActiveRecord::Migration
  def change
    create_table :mentor_profile_businesses do |t|
      t.string :title

      t.timestamps
    end
  end
end
