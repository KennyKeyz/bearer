json.extract! item, :id, :name, :status, :tracking_number, :code, :created_at, :updated_at
json.url item_url(item, format: :json)
