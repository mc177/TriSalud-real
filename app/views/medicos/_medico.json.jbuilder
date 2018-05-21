json.extract! medico, :id, :user_id, :especialidad_id, :nombres, :apellidos, :direccion, :telefono, :edad, :sexo, :estatus, :created_at, :updated_at
json.url medico_url(medico, format: :json)
