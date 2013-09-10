# encoding: utf-8
unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_group 'GemTemplate', 'lib/gem_template'
    add_group 'Specs', 'spec'
  end
end

require 'gem_template'
require 'rspec'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
