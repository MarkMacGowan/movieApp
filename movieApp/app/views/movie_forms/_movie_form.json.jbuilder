json.extract! movie_form, :id, :movie_id, :title, :year, :cast, :description, :dvd, :blu_ray, :created_at, :updated_at
json.url movie_form_url(movie_form, format: :json)
