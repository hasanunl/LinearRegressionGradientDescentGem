# LinearRegressionGradientDescent

Linear Regression Gradient Descent Gem is a ruby gem to use for your basic linear regression problems. This gem uses Sciruby's Nmatrix library to work.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'linear_regression_gradient_descent'
```
If you don't already have Nmatrix and Sciruby , install like this:
```ruby
gem install nmatrix
gem install sciruby
```
Sciruby is a metagem, so adding only Sciruby to your gem file will be enough to use Nmatrix:
```ruby
gem 'sciruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install linear_regression_gradient_descent

## Usage

To use this gem you need to create a object for it:
```ruby
gem_test =  LinearRegressionGradientDescent.new
```

Then you have to create Nmatrix type matrix to use with the object methods. This will be hopefully fixed to work with different data types :
```ruby
data = N.new([2,6], [12,15,17,18,19,20,1,2,3,4,5,6]).transpose
x = N.new([6,3])
x[:*,1] = data.col(0)
x[:*,0] = N.ones([6,1])
y = data.col(1)
```
Then you can use the fit method for training. This method will take 4 inputs. First is input variables, next is output variables. Then alpha variable for gradient descent and lastly the iterator value. This method will return you the theta values :
```ruby
theta = gem_test.fit(x,y,5,10)
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hasanunl/linear_regression_gradient_descent.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
