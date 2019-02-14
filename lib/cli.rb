require 'optparse'

class CLI

    def self.start
        options = {}
        OptionParser.new do |opts|
            opts.banner = "Usage: slack-cli-webhook [options]"

            opts.on("-m message", "--message message", "Message to send") do |m|
                options[:message] = m
            end

            opts.on("-w webhook", "--webhook webhook", "Webhook to send to") do |w|
                options[:webhook] = w
            end

        end.parse!

        if !options.key?(:message)
            raise ArgumentError, "Required attribute missing: #{:message}\nAdd -h or --help to view the usage"
        end

        if !options.key?(:webhook)
            raise ArgumentError, "Required attribute missing: #{:webhook}\nAdd -h or --help to view the usage"
        end

        puts options
    end

end

CLI.start
