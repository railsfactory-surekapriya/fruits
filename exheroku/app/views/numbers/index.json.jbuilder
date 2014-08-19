json.array!(@numbers) do |number|
  json.extract! number, :id, :letter
  json.url number_url(number, format: :json)
end
