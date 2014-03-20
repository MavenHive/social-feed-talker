# encoding: utf-8

root_path = File.expand_path(File.dirname('../'))
Dir["#{root_path}/app/call_controllers/*.rb"].each    { |controller| require controller }

Adhearsion.config do |config|

  # Centralized way to specify any Adhearsion platform or plugin configuration
  # - Execute rake config:show to view the active configuration values
  #
  # To update a plugin configuration you can write either:
  #
  #    * Option 1
  #        Adhearsion.config.<plugin-name> do |config|
  #          config.<key> = <value>
  #        end
  #
  #    * Option 2
  #        Adhearsion.config do |config|
  #          config.<plugin-name>.<key> = <value>
  #        end

  config.platform.environment = 'development'
  config.platform.logging.level = :info

  ##
  # Use with Rayo (eg Voxeo PRISM or FreeSWITCH mod_rayo)
  #
  #config.punchblock.username = "usera@freeswitch.local-dev.mojolingo.com" # Your XMPP JID for use with Rayo
  #config.punchblock.password = "1" # Your XMPP password

  ##
  # Use with Asterisk
  #
  # config.punchblock.platform = :asterisk # Use Asterisk
  # config.punchblock.username = "manager" # Your AMI username
  # config.punchblock.password = "password" # Your AMI password
  # config.punchblock.host = "asterisk.local-dev.mojolingo.com" # Your AMI host

  config.punchblock.host = ENV['PUNCHBLOCK_HOST'] || 'freeswitch.local-dev.mojolingo.com'
  config.punchblock.username = ENV['PUNCHBLOCK_USERNAME'] || 'usera@freeswitch.local-dev.mojolingo.com'
  config.punchblock.password = ENV['PUNCHBLOCK_PASSWORD'] || '1'
end
