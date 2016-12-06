json.extract! payment_description, :id, :payment_type, :payment_description, :created_at, :updated_at
json.url payment_description_url(payment_description, format: :json)