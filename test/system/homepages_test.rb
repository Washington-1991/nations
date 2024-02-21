require "application_system_test_case"

class HomepagesTest < ApplicationSystemTestCase
  setup do
    @homepage = homepages(:one)
  end

  test "visiting the index" do
    visit homepages_url
    assert_selector "h1", text: "Homepages"
  end

  test "should create homepage" do
    visit homepages_url
    click_on "New homepage"

    click_on "Create Homepage"

    assert_text "Homepage was successfully created"
    click_on "Back"
  end

  test "should update Homepage" do
    visit homepage_url(@homepage)
    click_on "Edit this homepage", match: :first

    click_on "Update Homepage"

    assert_text "Homepage was successfully updated"
    click_on "Back"
  end

  test "should destroy Homepage" do
    visit homepage_url(@homepage)
    click_on "Destroy this homepage", match: :first

    assert_text "Homepage was successfully destroyed"
  end
end
