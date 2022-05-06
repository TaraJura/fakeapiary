require "test_helper"

class TrackingNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracking_number = tracking_numbers(:one)
  end

  test "should get index" do
    get tracking_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_tracking_number_url
    assert_response :success
  end

  test "should create tracking_number" do
    assert_difference("TrackingNumber.count") do
      post tracking_numbers_url, params: { tracking_number: { carrier: @tracking_number.carrier, tracking_number: @tracking_number.tracking_number } }
    end

    assert_redirected_to tracking_number_url(TrackingNumber.last)
  end

  test "should show tracking_number" do
    get tracking_number_url(@tracking_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracking_number_url(@tracking_number)
    assert_response :success
  end

  test "should update tracking_number" do
    patch tracking_number_url(@tracking_number), params: { tracking_number: { carrier: @tracking_number.carrier, tracking_number: @tracking_number.tracking_number } }
    assert_redirected_to tracking_number_url(@tracking_number)
  end

  test "should destroy tracking_number" do
    assert_difference("TrackingNumber.count", -1) do
      delete tracking_number_url(@tracking_number)
    end

    assert_redirected_to tracking_numbers_url
  end
end
