json.array! @products.all.each do |product|
  json.code product.code
  json.name product.name
  json.barcode product.barcode
end
