json.array!(@chatpers) do |chatper|
  json.extract! chatper, :title, :img, :content, :course_id
  json.url chatper_url(chatper, format: :json)
end
