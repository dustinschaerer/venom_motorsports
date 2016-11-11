require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'minitest/pride'
require 'minitest/autorun'
require 'action_dispatch/testing/test_process'
include ActionDispatch::TestProcess

class CarrierWave::Mount::Mounter
  def store!
    # Not storing uploads in the tests
  end
end

class ActiveSupport::TestCase

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  CarrierWave.root = Rails.root.join('test/fixtures/files') #path is up to you
  # Add more helper methods to be used by all tests here...
end

class ActionController::TestCase
  include Devise::TestHelpers
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
    super
    CarrierWave.clean_cached_files!(0)
  end
end