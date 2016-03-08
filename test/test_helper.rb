ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require "minitest/rails/capybara"

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...

  def create_two_items
    Item.create(id: 1,
      name: "Ergonomic Steel Bottle",
      description: "Sint quasi modi officiis.",
      image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size",
      created_at: "2016-03-08 14:53:57",
      updated_at: "2016-03-08 14:53:57")

    Item.create(id: 2,
      name: "Ergonomic Steel Hat",
      description: "Sint quasi modi officiis.",
      image_url: "http://robohash.org/0.png?set=set2&bgset=bg1&size",
      created_at: "2016-03-08 14:53:57",
      updated_at: "2016-03-08 14:53:57")
  end


end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
end
