json.extract! user, :id, :ln, :fn, :sn, :bday, :email, :login, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)
