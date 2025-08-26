require "application_system_test_case"

class WaitingsTest < ApplicationSystemTestCase
  setup do
    @waiting = waitings(:one)
  end

  test "visiting the index" do
    visit waitings_url
    assert_selector "h1", text: "Waitings"
  end

  test "should create waiting" do
    visit waitings_url
    click_on "New waiting"

    fill_in "Discovered", with: @waiting.discovered
    fill_in "Email", with: @waiting.email
    fill_in "Name", with: @waiting.name
    fill_in "Status", with: @waiting.status
    fill_in "User", with: @waiting.user_id
    click_on "Create Waiting"

    assert_text "Waiting was successfully created"
    click_on "Back"
  end

  test "should update Waiting" do
    visit waiting_url(@waiting)
    click_on "Edit this waiting", match: :first

    fill_in "Discovered", with: @waiting.discovered
    fill_in "Email", with: @waiting.email
    fill_in "Name", with: @waiting.name
    fill_in "Status", with: @waiting.status
    fill_in "User", with: @waiting.user_id
    click_on "Update Waiting"

    assert_text "Waiting was successfully updated"
    click_on "Back"
  end

  test "should destroy Waiting" do
    visit waiting_url(@waiting)
    accept_confirm { click_on "Destroy this waiting", match: :first }

    assert_text "Waiting was successfully destroyed"
  end
end
