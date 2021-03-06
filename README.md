[travis]: https://travis-ci.org/blacktangent/grid_for
[codeclimate]: https://codeclimate.com/github/blacktangent/grid_for
[coveralls]: https://coveralls.io/r/blacktangent/grid_for

# GridFor

[![Build Status](https://travis-ci.org/blacktangent/grid_for.svg?branch=master)][travis]
[![Code Climate](https://codeclimate.com/github/blacktangent/grid_for/badges/gpa.svg)][codeclimate]
[![Test Coverage](http://img.shields.io/coveralls/blacktangent/grid_for/master.svg)][coveralls]

ActionView Helper to easily create Bootstrap grids. Written to easily
transition to future Bootstrap versions without using search-and-replace.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grid_for'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grid_for

## Usage

```erb
<%= grid_for @company do |b| %>
  <%= b.row do %>
    <% b.col(size: 3) do %>
      A list of attributes.
    <% end %>
    <%= b.col(size: 9) do %>
      A big table.
    <% end %>
  <% end %>
<% end %>
```

## Options
`col(options = {}, &block)`

* __:size__ - Width of column.
* __:class__ - Add additional classes to row and column divs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/grid_for. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

