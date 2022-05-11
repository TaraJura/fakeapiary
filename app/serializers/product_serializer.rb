class ProductSerializer
  include JSONAPI::Serializer
  attributes :id, :code, :name, :short_name, :barcode, :unit, :weight_brutto, :weight_netto, :volume, :width, :height, :depth, :units_in_box, :boxes_on_pallete
end
