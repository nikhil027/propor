json.extract! payment, :id, :owner_id, :tenant_id, :reference_number, :payment_date, :created_at, :updated_at
json.url payment_url(payment, format: :json)