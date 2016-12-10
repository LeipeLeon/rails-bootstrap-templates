# Rails::Bootstrap::Templates


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-bootstrap-templates', github: 'LeipeLeon/rails-bootstrap-templates', branch: "master"
```

And then execute:

    $ bundle
    $ spring stop
    $ rails generate bootstrap:install --template-engine=haml  --stylesheet-engine=scss --skip-turbolinks
    $ rm lib/templates

## Usage

```shell
rails generate scaffold_controller day title:string date:datetime maximum_contestants:integer
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LeipeLeon/rails-bootstrap-templates. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
