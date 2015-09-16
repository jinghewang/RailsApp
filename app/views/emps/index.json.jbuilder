json.array!(@emps) do |emp|
  json.extract! emp, :id, :name, :bio, :birthday
  json.url emp_url(emp, format: :json)
end
