require "application_system_test_case"

class UslugisTest < ApplicationSystemTestCase
  setup do
    @uslugi = uslugis(:one)
  end

  test "visiting the index" do
    visit uslugis_url
    assert_selector "h1", text: "Uslugis"
  end

  test "should create uslugi" do
    visit uslugis_url
    click_on "New uslugi"

    fill_in "Description", with: @uslugi.description
    fill_in "Image url", with: @uslugi.image_url
    fill_in "Title", with: @uslugi.title
    click_on "Create Uslugi"

    assert_text "Uslugi was successfully created"
    click_on "Back"
  end

  test "should update Uslugi" do
    visit uslugi_url(@uslugi)
    click_on "Edit this uslugi", match: :first

    fill_in "Description", with: @uslugi.description
    fill_in "Image url", with: @uslugi.image_url
    fill_in "Title", with: @uslugi.title
    click_on "Update Uslugi"

    assert_text "Uslugi was successfully updated"
    click_on "Back"
  end

  test "should destroy Uslugi" do
    visit uslugi_url(@uslugi)
    click_on "Destroy this uslugi", match: :first

    assert_text "Uslugi was successfully destroyed"
  end
end
