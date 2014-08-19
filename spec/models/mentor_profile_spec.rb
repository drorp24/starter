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

require 'rails_helper'

RSpec.describe MentorProfile, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
