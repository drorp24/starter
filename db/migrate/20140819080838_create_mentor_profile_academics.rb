class CreateMentorProfileAcademics < ActiveRecord::Migration
  def change
    create_table :mentor_profile_academics do |t|
      t.string :title

      t.timestamps
    end
  end
end
