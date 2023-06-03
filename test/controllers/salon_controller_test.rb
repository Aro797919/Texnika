require "test_helper"

class SalonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salon_index_url
    assert_response :success
  end
end
