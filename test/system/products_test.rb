require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Barcode", with: @product.barcode
    fill_in "Boxes on pallete", with: @product.boxes_on_pallete
    fill_in "Code", with: @product.code
    fill_in "Depth", with: @product.depth
    fill_in "Height", with: @product.height
    fill_in "Name", with: @product.name
    fill_in "Short name", with: @product.short_name
    fill_in "Unit", with: @product.unit
    fill_in "Units in box", with: @product.units_in_box
    fill_in "Volume", with: @product.volume
    fill_in "Weight netto", with: @product.weight_netto
    fill_in "Width", with: @product.width
    fill_in "Wight brutto", with: @product.weight_brutto
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Barcode", with: @product.barcode
    fill_in "Boxes on pallete", with: @product.boxes_on_pallete
    fill_in "Code", with: @product.code
    fill_in "Depth", with: @product.depth
    fill_in "Height", with: @product.height
    fill_in "Name", with: @product.name
    fill_in "Short name", with: @product.short_name
    fill_in "Unit", with: @product.unit
    fill_in "Units in box", with: @product.units_in_box
    fill_in "Volume", with: @product.volume
    fill_in "Weight netto", with: @product.weight_netto
    fill_in "Width", with: @product.width
    fill_in "Wight brutto", with: @product.weight_brutto
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
