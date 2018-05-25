require 'goldpricez/request'

module Goldpricez
  class Client
    def initialize(apikey=nil)
      @apikey = apikey || ENV['GOLDPRICES_APIKEY']
      @host = 'http://goldpricez.com'
      @path = '/api/rates'
    end

    def call(currency: 'usd', measure: 'all')
      request = Goldpricez::Request.new(@host, @path, @apikey)
      url = url_from(currency, measure)
      request.get(url, {})
    end

    def url_from(currency, measure)
      "/currency/#{currency}/measure/#{measure}"
    end
  end
end
