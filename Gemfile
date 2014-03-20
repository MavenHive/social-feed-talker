ruby '2.1.0'

source 'https://rubygems.org'

gem 'adhearsion', '~> 2.5'

# Adhearsion depends on the Punchblock library, but here you can specify the major version your application depends on.
# Exercise care when updating the major version, since you might encounter API compatability in parts of your Adhearsion application that rely on the Punchblock API.
# On occasion, an update of Adhearsion might necessitate an update to Punchblock. You will have to manually allow that here, and take care in the upgrade.
gem 'punchblock', '~> 2.3'

# This is here by default due to deprecation of #ask and #menu.
# See http://adhearsion.com/docs/common_problems#toc_3 for details
gem 'adhearsion-asr'

#
# Check http://ahnhub.com for a list of plugins you can use in your app.
# To use them, simply add them here and run `bundle install`.
#

gem 'twitter'

group :development, :test do
  gem 'rspec'
end
