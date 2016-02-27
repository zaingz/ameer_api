json.array!(@addresses) do |address|
  json.extract! address, :id, :vendor_id, :type, :lat, :lng, :wikipedia, :iata, :code
  json.url address_url(address, format: :json)
end
