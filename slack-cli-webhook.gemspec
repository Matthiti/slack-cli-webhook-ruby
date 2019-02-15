require 'date'
require File.expand_path("../lib/version", __FILE__)

Gem::Specification.new do |s|
    s.name          = "slack-cli-webhook"
    s.version       = VERSION
    s.authors       = ["Matthijs Roelink"]
    s.email         = %q{matthijs@roelink.eu}
    s.date          = Date.today.to_s
    s.summary       = %q{Gem for sending Slack messages using the command line using a webhook}
    s.license       = "MIT"
    s.homepage      = %q{https://github.com/Matthiti/slack-cli-webhook-ruby}
    s.files         = ["bin/slack-cli-webhook", "lib/slack-cli-webhook.rb", "lib/cli.rb", "lib/version.rb"]
    s.require_paths = ["lib"]
    s.executables   = ["slack-cli-webhook"]
end