require "application_system_test_case"

class TrackingNumbersTest < ApplicationSystemTestCase
  setup do
    @tracking_number = tracking_numbers(:one)
  end

  test "visiting the index" do
    visit tracking_numbers_url
    assert_selector "h1", text: "Tracking numbers"
  end

  test "should create tracking number" do
    visit tracking_numbers_url
    click_on "New tracking number"

    fill_in "Carrier", with: @tracking_number.carrier
    fill_in "Tracking number", with: @tracking_number.tracking_number
    click_on "Create Tracking number"

    assert_text "Tracking number was successfully created"
    click_on "Back"
  end

  test "should update Tracking number" do
    visit tracking_number_url(@tracking_number)
    click_on "Edit this tracking number", match: :first

    fill_in "Carrier", with: @tracking_number.carrier
    fill_in "Tracking number", with: @tracking_number.tracking_number
    click_on "Update Tracking number"

    assert_text "Tracking number was successfully updated"
    click_on "Back"
  end

  test "should destroy Tracking number" do
    visit tracking_number_url(@tracking_number)
    click_on "Destroy this tracking number", match: :first

    assert_text "Tracking number was successfully destroyed"
  end
end
