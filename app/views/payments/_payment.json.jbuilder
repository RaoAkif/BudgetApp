json.extract! payment, :id, :author_id, :name, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
