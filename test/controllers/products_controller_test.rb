require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { barcode: @product.barcode, boxes_on_pallete: @product.boxes_on_pallete, code: @product.code, depth: @product.depth, height: @product.height, name: @product.name, short_name: @product.short_name, unit: @product.unit, units_in_box: @product.units_in_box, volume: @product.volume, weight_netto: @product.weight_netto, width: @product.width, wight_brutto: @product.wight_brutto } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { barcode: @product.barcode, boxes_on_pallete: @product.boxes_on_pallete, code: @product.code, depth: @product.depth, height: @product.height, name: @product.name, short_name: @product.short_name, unit: @product.unit, units_in_box: @product.units_in_box, volume: @product.volume, weight_netto: @product.weight_netto, width: @product.width, wight_brutto: @product.wight_brutto } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
