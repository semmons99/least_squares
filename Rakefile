require 'rubygems'
require 'rake'
require 'rake/clean'

CLOBBER.include('.yardoc', 'doc', 'pkg')

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "least_squares"
    gem.summary = %Q{Calulate the Least Squares Regression Line}
    gem.description = %Q{This gem adds methods to the Math module to aid in calculating the Least Squares Regression Line given two arrays.}
    gem.email = "semmons99@gmail.com"
    gem.homepage = "http://github.com/semmons99/least_squares"
    gem.authors = ["Shane Emmons"]
    gem.add_development_dependency "rspec", ">= 2.0.0"
    gem.add_development_dependency "yard", ">= 0.5.4"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
