json.extract! taco, :id, :meat, :rice, :salsa, :fries, :notes, :created_at, :updated_at
json.url tacos_url(taco, format: :json)
