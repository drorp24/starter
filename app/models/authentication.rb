# == Schema Information
#
# Table name: authentications
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  provider         :string(255)
#  uid              :string(255)
#  oauth_token      :string(255)
#  oauth_expires_at :datetime
#  secret           :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Authentication < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def update_auth_credentials(omniauth)

    self.oauth_token = omniauth.credentials.token
    self.oauth_expires_at = Time.at(omniauth.credentials.expires_at) unless omniauth.credentials.expires_at.nil?
    self.secret = omniauth.credentials.secret
    self.save!
  end

end
