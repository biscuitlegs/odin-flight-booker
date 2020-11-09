require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get flights_all_url
    assert_response :success
  end

end
