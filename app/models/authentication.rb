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
