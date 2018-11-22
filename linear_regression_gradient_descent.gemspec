
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "linear_regression_gradient_descent/version"

Gem::Specification.new do |spec|
  spec.name          = "linear_regression_gradient_descent"
  spec.version       = LinearRegressionGradientDescent::VERSION
  spec.authors       = ["hasanunl"]
  spec.email         = ["hu1997tr@gmail.com"]

  spec.summary       = "Linear regression gem written in ruby"
  spec.description   = "Linear regression gem that uses nmatrix library , written in ruby."
  spec.homepage      = "https://github.com/hasanunl/LinearRegressionGradientDescentGem"
  spec.license       = "MIT"


end
