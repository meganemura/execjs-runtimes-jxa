# ExecJS::Runtimes::JXA

[ExecJS](https://github.com/rails/execjs) Runtime for JXA (Apple's JavaScript for Automation) using `osascript -l JavaScript`.

```ruby
gem 'execjs-runtimes-jxa'
```


## Usage

```ruby
require 'execjs/runtimes/jxa'
ExecJS.runtime = ExecJS::Runtimes::JXA  # Set JXA as a runtime for ExecJS
ExecJS.exec('var app = Application("iTunes"); app.activate()')
ExecJS.eval('1 + 1')  # => 2
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/meganemura/execjs-runtimes-jxa.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
