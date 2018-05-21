json.extract! clinica, :id, :user_id, :rif, :nombre, :direccion, :estatus, :created_at, :updated_at
json.url clinica_url(clinica, format: :json)
