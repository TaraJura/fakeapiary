#json.partial! "api/orders/order", order: @order

json.order_number @order.id
json.order_number_web @order.id
json.order_date @order.id
json.note @order.id
json.pdf_docs @order.id
json.total @order.id
json.currency @order.id
json.business_unit_id @order.id

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
