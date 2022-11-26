json.extract! subscription, :id, :kind, :account_id, :start_date, :end_date, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
