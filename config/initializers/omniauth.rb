Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
  provider :facebook, ENV["FACEBOOK_KEY"], ENV["FACEBOOK_SECRET"]
  provider :linkedin, ENV["LINKEDIN_KEY"], ENV["LINKEDIN_SECRET"]
end
# other options for linkedin requiring permissions.
# , :scope => 'r_fullprofile r_emailaddress r_network', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
