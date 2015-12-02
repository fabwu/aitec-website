json.array!(@intervals) do |interval|
  json.extract! interval, :id, :start, :end, :is_current
  json.url interval_url(interval, format: :json)
end
