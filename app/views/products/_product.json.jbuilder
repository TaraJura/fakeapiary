json.extract! product, :id, :code, :name, :short_name, :barcode, :unit, :wight_brutto, :weight_netto, :volume, :width, :height, :depth, :units_in_box, :boxes_on_pallete, :created_at, :updated_at
json.url product_url(product, format: :json)
