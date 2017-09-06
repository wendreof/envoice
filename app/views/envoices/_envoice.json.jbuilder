json.extract! envoice, :id, :customer_id, :created_at, :updated_at
json.url envoice_url(envoice, format: :json)
