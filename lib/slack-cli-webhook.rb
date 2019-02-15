require 'net/http'
require 'json'
require 'uri'

class SlackCliWebhook

    def self.send_message(message, webhook)
        begin
            message.sub! "\\n", "\n"
            puts message
            uri = URI.parse(webhook)
            header = {'Content-Type' => 'application/json'}
            data = {text: message}
            http = Net::HTTP.new(uri.host, uri.port)
            http.use_ssl = true
            request = Net::HTTP::Post.new(uri.request_uri, header)
            request.body = data.to_json
            response = http.request(request)
            return response.code == '200'
        rescue
            return false
        end
    end

end