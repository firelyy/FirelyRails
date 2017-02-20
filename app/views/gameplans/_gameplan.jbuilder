json.extract! gameplan, :id, :name, :user_id, :event_id, :created_at, :updated_at
json.url gameplan_url(gameplan, format: :json)