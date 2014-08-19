# == Schema Information
#
# Table name: general_profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class GeneralProfile < ActiveRecord::Base

  belongs_to :user

end
