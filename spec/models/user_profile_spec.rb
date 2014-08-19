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

require 'rails_helper'

RSpec.describe UserProfile, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
