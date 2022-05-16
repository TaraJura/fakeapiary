#json.partial! "api/orders/order", order: @order

json.order_number @order.order_number
json.order_number_web @order.order_number_web
json.order_date @order.created_at
json.note @order.note
json.pdf_docs @order.pdf_docs
json.total @order.total
json.currency @order.currency
json.business_unit_id @order.business_unit_id

json.tracking_numbers @order.tracking_numbers do |t_numbers|
  json.carrier t_numbers.carrier
  json.tracking_number t_numbers.tracking_number
end

json.order_states @order.order_states do |o_states|
  json.id o_states.id
  json.name o_states.name
  json.date_created o_states.date_created
  json.note o_states.note
end
