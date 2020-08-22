# Strainz

This will help any medical marijuana or recreational users in finding specific information about all the variets of marijuana strains that exist in The Strain API.  Just enter the name of your favorite strain to learn all about it's attributes!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Strainz'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install Strainz

## Usage

Enter the name of whatever strain you would like to get information back on.  It will return the strain's name, id# in the database, race, effects (both positive and negative) and flavor profiles.  If the name you enter isn't found in the database you will receive a message stating that the strain isn't found.  You can enter any strain name without regard for capitalizing letters or not, and without worrying about spacing (searching for a strain: blue dream, will work just fine).  There are a lot of people in the world that use or depend on medical and recreational marijuana for treatment for their health concerns.  I think this gem can help make the search for those strains that help us the most, just a bit easier. Enjoy!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/Strainz.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
