class Facebookuser < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |facebookuser|
      facebookuser.provider = auth.provider
      facebookuser.uid = auth.uid
      facebookuser.name = auth.info.name
      facebookuser.email = auth.info.email
      facebookuser.oauth_token = auth.credentials.token
      facebookuser.oauth_expires_at = Time.at(auth.credentials.expires_at)
      facebookuser.save!
    end
  end
end
