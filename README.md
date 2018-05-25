# Goldpricez
 This is a client to query [Goldpricez API](http://goldpricez.com/about/api)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'goldpricez'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install goldpricez

## Usage

Get price by currency and measure


```ruby
client = Goldpricez::Client.new('f6412fdf260d55b6cb460cb4e5bad69cf6412fdf')  
client.call(currency: 'cop', measure: 'gram') # =>
                                              # {
                                              #   "ounce_price_usd"=>"1301.38",
                                              #   "gmt_ounce_price_usd_updated"=>"26-05-2018 01:01:00 am",
                                              #   "ounce_price_ask"=>"1301.38",
                                              #   "ounce_price_bid"=>"1301.02",
                                              #   "ounce_price_usd_today_low"=>"1299.77",
                                              #   "ounce_price_usd_today_high"=>"1307.99",
                                              #   "usd_to_cop"=>"2877",
                                              #   "gmt_cop_updated"=>"25-05-2018 10:05:00 pm",
                                              #   "ounce_in_cop"=>3744070.26,
                                              #   "gram_to_ounce_formula"=>0.0321,
                                              #   "gram_in_usd"=>41.774298,
                                              #   "gram_in_cop"=>120184.655346
                                              #}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/degzcs/goldpricez. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Goldpricez project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/goldpricez/blob/master/CODE_OF_CONDUCT.md).
