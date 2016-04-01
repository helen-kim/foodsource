json.array!(@answers) do |answer|
  json.extract! answer, :id, :time_answered, :text, :vote, :question_id
  json.url answer_url(answer, format: :json)
end
