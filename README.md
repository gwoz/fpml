## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fpml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fpml

## Usage

Get a scheme with all available reference data

```ruby
scheme = Fpml::Scheme.new('business_center')
```

Access scheme information

```ruby
scheme.definition
> "A business day calendar location"

scheme.publication_date
> "2016-08-02"

...
```
Access record information

```ruby
record = scheme.records.first

record.code
> "AEAD"

record.source
> "FpML"

record.description
> "Abu Dhabi, United Arab Emirates"
```

All available schemes can be found under Section 5 at [FpML Schemes](http://www.fpml.org/spec/coding-scheme)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fpml. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
