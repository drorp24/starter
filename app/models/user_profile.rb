# == Schema Information
#
# Table name: user_profiles
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  profile_id   :integer
#  profile_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class UserProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile, polymorphic: true
  belongs_to :mentor_profile
  belongs_to :startup_profile
  has_many   :profile_sections

  scope :startup, -> { where(profile_type: "StartupProfile").first }
  scope :mentor, -> { where(profile_type: "MentorProfile").first }

end
