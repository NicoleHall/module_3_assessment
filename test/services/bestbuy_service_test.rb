require './test/test_helper'

class BestbuyServiceTest < ActiveSupport::TestCase

  test "#followers_count" do
    VCR.use_cassette('bestbuy_service#query_by_decription') do
      query = "iphone"
      assert_equal 15, GithubService.new.query_by_decription(query).count
    end
  end
end
