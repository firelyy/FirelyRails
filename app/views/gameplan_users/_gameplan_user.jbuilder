json.extract! gameplan_user, :id, :gameplan_id, :user_id, :created_at, :updated_at
json.url gameplan_user_url(gameplan_user, format: :json)