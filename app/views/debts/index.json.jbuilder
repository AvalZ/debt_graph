json.array!(@debts) do |debt|
  json.extract! debt, :id, :amount, :from_id, :to_id
  json.url debt_url(debt, format: :json)
end
