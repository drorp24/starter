# == Schema Information
#
# Table name: startup_profiles
#
#  id         :integer          not null, primary key
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class StartupProfile < ActiveRecord::Base
  has_one :user_profile, as: :profile, dependent: :destroy
  has_many :profile_sections, through: :user_profile
end
