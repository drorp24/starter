# == Schema Information
#
# Table name: startup_profiles
#
#  id         :integer          not null, primary key
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe StartupProfile, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
