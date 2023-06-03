require "test_helper"

class UslugisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uslugi = uslugis(:one)
  end

  test "should get index" do
    get uslugis_url
    assert_response :success
  end

  test "should get new" do
    get new_uslugi_url
    assert_response :success
  end

  test "should create uslugi" do
    assert_difference("Uslugi.count") do
      post uslugis_url, params: { uslugi: { description: @uslugi.description, image_url: @uslugi.image_url, title: @uslugi.title } }
    end

    assert_redirected_to uslugi_url(Uslugi.last)
  end

  test "should show uslugi" do
    get uslugi_url(@uslugi)
    assert_response :success
  end

  test "should get edit" do
    get edit_uslugi_url(@uslugi)
    assert_response :success
  end

  test "should update uslugi" do
    patch uslugi_url(@uslugi), params: { uslugi: { description: @uslugi.description, image_url: @uslugi.image_url, title: @uslugi.title } }
    assert_redirected_to uslugi_url(@uslugi)
  end

  test "should destroy uslugi" do
    assert_difference("Uslugi.count", -1) do
      delete uslugi_url(@uslugi)
    end

    assert_redirected_to uslugis_url
  end
end
