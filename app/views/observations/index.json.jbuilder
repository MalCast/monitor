json.array!(@observations) do |observation|
  json.extract! observation, :id, :name, :like, :issue_id
  json.url observation_url(observation, format: :json)
end
