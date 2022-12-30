require "uri"
require "net/http"
require 'jwt'

class GktecoClient
    attr_reader :url

    def initialize
        @url = URI("http://localhost:8000/") 
    end

    def fetch_data(key)
        request = Net::HTTP::Get.new(@url)
        http = Net::HTTP.new(@url.host, @url.port);
        token = JWT.encode({'admin': 'ammad'},key)
        request["Authorization"] = "#{token}"

        response = http.request(request)
        response.read_body
    end

end

<<<<<<< HEAD
        
        

end
=======
GktecoClient.new.fetch_data('devsloop')
>>>>>>> 6d1e87fcdf2df7343767021ac3bad38e379cb1fc
