json.array!(@questions) do |question|
  json.extract! question, :id, :time_posted, :expertise, :time_range, :ingredients, :occasion, :notes
  json.url question_url(question, format: :json)
end
