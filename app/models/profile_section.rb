class ProfileSection < ActiveRecord::Base
  
  belongs_to :user_profile
  belongs_to :section, polymorphic: true

end
