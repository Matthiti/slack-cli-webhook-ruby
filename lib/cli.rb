require 'optparse'
require 'slack-cli-webhook'

class CLI

    def self.start
        options = {}
        OptionParser.new do |opts|
            opts.banner = "Usage: slack-cli-webhook [options]"

            opts.on("-m MESSAGE", "--message MESSAGE", "Message to send") do |m|
                options[:message] = m
            end

            opts.on("-w WEBHOOK", "--webhook WEBHOOK", "Webhook to send to") do |w|
                options[:webhook] = w
            end

        end.parse!

        if !options.key?(:message)
            puts "Required attribute missing: #{:message}\nAdd -h or --help to view the usage"
            exit
        end

        if !options.key?(:webhook)
            puts "Required attribute missing: #{:webhook}\nAdd -h or --help to view the usage"
            exit
        end

        if SlackCliWebhook.send_message(options[:message], options[:webhook])
            puts "Message sent successfully."
            exit
        else
            puts "Sending message failed, please try again later."
            exit
        end
    end

end

CLI.start
