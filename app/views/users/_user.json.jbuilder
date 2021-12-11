json.extract! user, :id, :login, :fullname, :birthday, :e­mail, :address, :city, :state, :country, :zip, :password, :confirm_password, :role_id, :latitude, :longitude, :created_at, :updated_at
json.url user_url(user, format: :json)
