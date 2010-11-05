Gem::Specification.new do |s|
  s.name        = "least_squares"
  s.version     = "0.1.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Shane Emmons"]
  s.email       = "semmons99@gmail.com"
  s.homepage    = "http://github.com/semmons99/least_squares"
  s.summary     = "Calulate the Least Squares Regression Line"
  s.description = "This gem adds methods to the Math module to aid in calculating the Least Squares Regression Line given two arrays."

  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_development_dependency "rspec", ">= 2.0.0"
  s.add_development_dependency "yard"

  s.files        = Dir.glob("lib/**/*") + %w(CHANGELOG.md LICENSE README.md)
  s.require_path = "lib"
end

