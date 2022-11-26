json.extract! rental, :id, :user_id, :console_id, :checked_out, :returned, :created_at, :updated_at
json.url rental_url(rental, format: :json)
