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

require 'rails_helper'

RSpec.describe GeneralProfile, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
