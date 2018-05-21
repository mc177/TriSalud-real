json.extract! servicio, :id, :costo, :descripcion, :estatus, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
