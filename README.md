# FakeTree

![CI badge](https://travis-ci.org/J3RN/faketree.svg?branch=master)

This is a gem used to create a fake filesystem to test your gem or application in. Under the hood, it uses [FakeFS](https://github.com/defunkt/fakefs) to stub out the filesystem requests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faketree'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faketree

## Usage

First, you have to create a layout of the fake filesystem in YAML:

```YAML
# spec/support/faketree.yml

Gemfile: |
  ruby '2.2.0'

  gem 'rails'
app:
  models:
    user.rb: |
      class User
...
```

Usage is simple. To load your faked out filesystem:

```ruby
FakeTree.start! 'path_to_yaml' # You can put your YAML layout anywhere!
```

To stop faking out the file system:

```ruby
FakeTree.stop!
```

That's all there is to it!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/faketree. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

