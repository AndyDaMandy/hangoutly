require "application_system_test_case"

class HangoutsTest < ApplicationSystemTestCase
  setup do
    @hangout = hangouts(:one)
  end

  test "visiting the index" do
    visit hangouts_url
    assert_selector "h1", text: "Hangouts"
  end

  test "should create hangout" do
    visit hangouts_url
    click_on "New hangout"

    fill_in "Creator", with: @hangout.creator_id
    fill_in "Date", with: @hangout.date
    fill_in "Time", with: @hangout.time
    click_on "Create Hangout"

    assert_text "Hangout was successfully created"
    click_on "Back"
  end

  test "should update Hangout" do
    visit hangout_url(@hangout)
    click_on "Edit this hangout", match: :first

    fill_in "Creator", with: @hangout.creator_id
    fill_in "Date", with: @hangout.date
    fill_in "Time", with: @hangout.time
    click_on "Update Hangout"

    assert_text "Hangout was successfully updated"
    click_on "Back"
  end

  test "should destroy Hangout" do
    visit hangout_url(@hangout)
    click_on "Destroy this hangout", match: :first

    assert_text "Hangout was successfully destroyed"
  end
end
