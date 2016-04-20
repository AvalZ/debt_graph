json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :surname, :group_id
  json.url participant_url(participant, format: :json)
end
