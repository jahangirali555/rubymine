json.array!(@companies) do |company|
  json.extract! company, :id, :company_id, :companyName
  json.url company_url(company, format: :json)
end
