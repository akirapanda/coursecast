json.array!(@courses) do |course|
  json.extract! course, :name, :description, :content, :author
  json.url course_url(course, format: :json)
end
