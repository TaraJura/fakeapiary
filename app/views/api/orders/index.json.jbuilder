
json.orders @orders.all.each do |order|
  json.order_number order.order_number
  json.order_date order.created_at
  json.state_id order.state_id
  json.state_name order.state_name
  json.tracking_numbers order.tracking_numbers do |t_numbers|
    json.shipped t_numbers.created_at
    json.carrier t_numbers.carrier
    json.tracking_number t_numbers.tracking_number
  end
end