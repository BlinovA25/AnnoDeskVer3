json.extract! announcement, :id, :text, :user_id, :picture, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
