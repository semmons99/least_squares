$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'least_squares'
require 'spec'
require 'spec/autorun'

Spec::Runner.configure do |config|
  
end
