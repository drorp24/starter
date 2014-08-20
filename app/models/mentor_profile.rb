# == Schema Information
#
# Table name: mentor_profiles
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

class MentorProfile < ActiveRecord::Base
  has_one :user_profile, as: :profile, dependent: :destroy
  has_many :profile_sections, through: :user_profile

end
