json.array!(@invites) do |invite|
  json.extract! invite, :id, :email
  json.url invite_url(invite, format: :json)
end
