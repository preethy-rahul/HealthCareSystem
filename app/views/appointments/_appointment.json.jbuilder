json.extract! appointment, :id, :appdate, :apptime, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)