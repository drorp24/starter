# == Schema Information
#
# Table name: mentor_profiles
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  mentor_profile_id   :integer
#  mentor_profile_type :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

class MentorProfile < ActiveRecord::Base
  has_one :user_profile, as: :profile, dependent: :destroy
  belongs_to :mentor_profile, polymorphic: true

end