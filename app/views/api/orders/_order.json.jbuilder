json.extract! order, :id, :order_number, :order_number_web, :note, :pdf_docs, :total, :currency, :business_unit_id, :created_at, :updated_at
json.tracking_numbers order.tracking_numbers do |tracking_number|
  json.extract! tracking_number, :id, :carrier, :tracking_number
end
json.order_states order.order_states do |order_state|
  json.extract! order_state, :id, :name, :date_created, :note, :order_id
end
json.url order_url(order, format: :json)
