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
end
