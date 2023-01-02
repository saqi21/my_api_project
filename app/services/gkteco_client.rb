require "uri"
require "net/http"
require 'jwt'

class GktecoClient
    attr_reader :url

    def initialize
        @url = URI("http://localhost:8000/") 
    end

    def fetch(key)
        request = Net::HTTP::Get.new(@url)
        http = Net::HTTP.new(@url.host, @url.port);
        token = JWT.encode({'admin': 'devsloop'},key)
        begin 
            request["Authorization"] = "Bearer #{token}"
        rescue exception
            return exception
        end
        response = http.request(request)
        response.read_body
    end
end   

#puts GktecoClient.new.fetch('devsloop')