json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :content, :is_completed
  json.url todo_url(todo, format: :json)
end
