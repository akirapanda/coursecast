json.array!(@chapters) do |chapter|
  json.extract! chapter, :title, :body, :body_html, :course_id
  json.url chapter_url(chapter, format: :json)
end
