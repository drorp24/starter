# == Schema Information
#
# Table name: professional_profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  position   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ProfessionalProfile < ActiveRecord::Base

  belongs_to :user

end
