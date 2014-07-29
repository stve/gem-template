# coding: utf-8
unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_group 'GemTemplate', 'lib/gem_template'
    add_filter '/spec/'
  end
end

require 'gem_template'
require 'rspec'

RSpec.configure do |config|
  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.default_formatter = 'doc' if config.files_to_run.one?
end
