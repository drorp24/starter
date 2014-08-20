class RemoveFieldsFromMentorProfile < ActiveRecord::Migration
  def change
    remove_column :mentor_profiles, :mentor_profile_id, :integer
    remove_column :mentor_profiles, :mentor_profile_type, :string
  end
end
