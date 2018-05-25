require'spec_helper'

RSpec.describe Goldpricez::Client do
 it 'should get price of gold grams in COP currency' do
   VCR.use_cassette("gold_by_cop_and_gram") do
     client = Goldpricez::Client.new("f6412fdf260d55b6cb460cb4e5bad69cf6412fdf")
     response= client.call(currency: 'cop', measure: 'gram')
     expect(response).to include({
       "gmt_cop_updated" => "25-05-2018 09:05:00 pm",
       "gmt_ounce_price_usd_updated"=>"26-05-2018 01:01:00 am",
       "gram_to_ounce_formula"=>0.0321,
       "gram_in_usd"=>41.774298,
       "gram_in_cop"=>120565.63694376,
			 "ounce_in_cop" => 3755938.8456,
       "ounce_price_ask" => "1301.38",
       "ounce_price_bid" => "1301.02",
       "ounce_price_usd" => "1301.38",
       "ounce_price_usd_today_high" => "1307.99",
       "ounce_price_usd_today_low" => "1299.77",
       "usd_to_cop" => "2886.12",
     })
   end
 end
end
