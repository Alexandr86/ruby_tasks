$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "notifier"


desc 'Spec all functionality of gem'
task :spec_all do
  system("rspec spec/*/")
end