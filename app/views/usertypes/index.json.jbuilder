json.array!(@usertypes) do |usertype|
  json.extract! usertype, :id, :usertype_id, :usertype_name, :can_create, :can_delete, :can_view
  json.url usertype_url(usertype, format: :json)
end
