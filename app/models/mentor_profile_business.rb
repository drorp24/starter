# == Schema Information
#
# Table name: mentor_profile_businesses
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class MentorProfileBusiness < ActiveRecord::Base
  has_one :mentor_profile, as: :mentor_profile, dependent: :destroy
end
