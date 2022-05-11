json.extract! order, :id, :order_number, :order_number_web, :note, :pdf_docs, :total, :currency, :business_unit_id, :created_at, :updated_at
json.url order_url(order, format: :json)
