Gem::Specification.new do |s|
    s.name          = "slack-cli-webhook"
    s.version       = "0.0.2"
    s.authors       = ["Matthijs Roelink"]
    s.email         = %q{matthijs@roelink.eu}
    s.date          = %q{2019-02-14}
    s.summary       = %q{Gem for sending Slack messages using the command line using a webhook}
    s.license       = "MIT"
    s.homepage      = %q{https://github.com/Matthiti/slack-cli-webhook-ruby}
    s.files         = ["bin/main", "lib/slack-cli-webhook.rb"]
    s.require_paths = ["lib"]
    s.executables   = ["main"]
end