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
    token = JWT.encode({'admin': 'devsloop'}, key)
    request["Authorization"] = "Bearer #{token}"
    response = http.request(request)
    (Synchronization.last || Synchronization.create).update(last_sync: DateTime.now)
    response.read_body
  end
end