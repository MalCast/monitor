json.array!(@thermostat_models) do |thermostat_model|
  json.extract! thermostat_model, :id, :name
  json.url thermostat_model_url(thermostat_model, format: :json)
end
