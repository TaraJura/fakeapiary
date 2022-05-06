json.extract! address, :id, :name, :company, :street, :city, :zip, :country, :phone, :email, :created_at, :updated_at
json.url address_url(address, format: :json)
