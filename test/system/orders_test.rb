require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Business unit", with: @order.business_unit_id
    fill_in "Currency", with: @order.currency
    fill_in "Note", with: @order.note
    fill_in "Order number", with: @order.order_number
    fill_in "Order number web", with: @order.order_number_web
    check "Pdf docs" if @order.pdf_docs
    fill_in "Total", with: @order.total
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Business unit", with: @order.business_unit_id
    fill_in "Currency", with: @order.currency
    fill_in "Note", with: @order.note
    fill_in "Order number", with: @order.order_number
    fill_in "Order number web", with: @order.order_number_web
    check "Pdf docs" if @order.pdf_docs
    fill_in "Total", with: @order.total
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
