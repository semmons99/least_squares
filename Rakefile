require 'rubygems'
require 'rake'
require 'rake/clean'

CLOBBER.include('.yardoc', 'doc')

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "least_squares"
    gem.summary = %Q{Calulate the Least Squares Regression Line}
    gem.description = %Q{This gem adds methods to the Math module to aid in calculating the Least Squares Regression Line given two arrays.}
    gem.email = "semmons99@gmail.com"
    gem.homepage = "http://github.com/semmons99/least_squares"
    gem.authors = ["Shane Emmons"]
    gem.add_development_dependency "rspec", ">= 1.3.0"
    gem.add_development_dependency "yard", ">= 0.5.4"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
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
