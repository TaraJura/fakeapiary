#json.partial! "api/orders/order", order: @order

json.array! [1] do
  json.order_number @order.order_number
  json.order_number_web @order.order_number_web
  json.order_date @order.created_at.strftime('%Y-%m-%d')
  json.note @order.note
  if @order.pdf_docs&.size&.> 2
    json.pdf_docs "True"
  else
    json.pdf_docs "False"
  end
  json.total @order.total
  json.currency @order.currency
  json.business_unit_id @order.business_unit_id

  json.tracking_numbers @order.tracking_numbers do |t_numbers|
    json.carrier t_numbers.carrier
    json.tracking_number t_numbers.tracking_number
  end

  json.order_states @order.order_states do |o_states|
    json.id o_states.code
    json.name o_states.name
    json.date_created o_states.created_at.strftime('%Y-%m-%d')
    json.note o_states.note
  end
end