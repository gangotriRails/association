require "application_system_test_case"

class InstaUsersTest < ApplicationSystemTestCase
  setup do
    @insta_user = insta_users(:one)
  end

  test "visiting the index" do
    visit insta_users_url
    assert_selector "h1", text: "Insta Users"
  end

  test "creating a Insta user" do
    visit insta_users_url
    click_on "New Insta User"

    fill_in "Name", with: @insta_user.name
    click_on "Create Insta user"

    assert_text "Insta user was successfully created"
    click_on "Back"
  end

  test "updating a Insta user" do
    visit insta_users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @insta_user.name
    click_on "Update Insta user"

    assert_text "Insta user was successfully updated"
    click_on "Back"
  end

  test "destroying a Insta user" do
    visit insta_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insta user was successfully destroyed"
  end
end
