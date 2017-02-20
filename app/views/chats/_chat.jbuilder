json.extract! chat, :id, :message, :gameplan_id, :user_id, :created_at, :updated_at
json.url chat_url(chat, format: :json)