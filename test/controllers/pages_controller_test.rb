require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get usluga" do
    get pages_usluga_url
    assert_response :success
  end

  test "should get nas" do
    get pages_nas_url
    assert_response :success
  end

  test "should get kontakt" do
    get pages_kontakt_url
    assert_response :success
  end
end
