# == Schema Information
#
# Table name: mentor_profile_academics
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class MentorProfileAcademic < ActiveRecord::Base
  has_one :mentor_profile, as: :mentor_profile, dependent: :destroy
end