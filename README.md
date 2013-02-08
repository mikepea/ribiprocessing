# Ribiprocessing

A really super-slim layer to communicate with Processing from JRuby.

## Installation

Add this line to your application's Gemfile:

    gem 'ribiprocessing'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ribiprocessing

## Usage

``` ruby
require 'ribiprocessing'

class FlashingLightsSketch < Ribiprocessing::SimpleApp

  attr_reader :random_background

  def initialize(opts={})
    @random_background = opts[:random_background] || RandomBackground.new(self)
    super
  end

  def setup
    size 800, 600
  end

  def draw
    random_background.generate
  end

end

class RandomBackground
  include Ribiprocessing::Proxy

  def generate
    background rand(255), rand(255), rand(255)
  end

end

FlashingLightsSketch.new({:title=>"Flashing Lights"})
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
