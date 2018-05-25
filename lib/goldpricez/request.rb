require 'faraday'
require 'json'
module Goldpricez 
  class Request
    class GoldpricezError < StandardError; end

    attr_accessor :path, :token, :session

    def initialize(host, path, token=nil)
      @token = token
      @path = path
      @session = Faraday.new url: host
    end

    def get(url, params={})
        params = JSON.generate(params)
        response = @session.get do |req|
          req.url "#{ @path }#{ url }"
          req.headers['X-API-KEY'] = @token
        end
        cast_error(response) unless (response.status == 200 || response.status == 201)
        return JSON JSON.parse(response.body, :quirks_mode => true)
    end
    
    def cast_error(response)
      error_map = {
        500 => 'Sever error! Something were wrong in the server.',
        400 => "Bad request!, #{ message }",
        404 => 'Not found!',
        405 => 'Operation does not allowed!',
      }
      raise GoldpricezError, "Status: #{ response.status }. Error: #{ error_map[response.status] }"
    end
  end
end

