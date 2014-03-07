json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :desc
  json.url user_url(user, format: :json)
end
