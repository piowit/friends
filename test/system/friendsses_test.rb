require "application_system_test_case"

class FriendssesTest < ApplicationSystemTestCase
  setup do
    @friendss = friendsses(:one)
  end

  test "visiting the index" do
    visit friendsses_url
    assert_selector "h1", text: "Friendsses"
  end

  test "creating a Friendss" do
    visit friendsses_url
    click_on "New Friendss"

    fill_in "Email", with: @friendss.email
    fill_in "First name", with: @friendss.first_name
    fill_in "Last name", with: @friendss.last_name
    fill_in "Phone", with: @friendss.phone
    fill_in "Twitter", with: @friendss.twitter
    click_on "Create Friendss"

    assert_text "Friendss was successfully created"
    click_on "Back"
  end

  test "updating a Friendss" do
    visit friendsses_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friendss.email
    fill_in "First name", with: @friendss.first_name
    fill_in "Last name", with: @friendss.last_name
    fill_in "Phone", with: @friendss.phone
    fill_in "Twitter", with: @friendss.twitter
    click_on "Update Friendss"

    assert_text "Friendss was successfully updated"
    click_on "Back"
  end

  test "destroying a Friendss" do
    visit friendsses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendss was successfully destroyed"
  end
end
