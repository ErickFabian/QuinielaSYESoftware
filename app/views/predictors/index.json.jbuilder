json.array!(@predictors) do |predictor|
  json.extract! predictor, :id, :start_at, :end_at, :cost
  json.url predictor_url(predictor, format: :json)
end
