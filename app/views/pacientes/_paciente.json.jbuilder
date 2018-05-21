json.extract! paciente, :id, :user_id, :ced_paciente, :nombres, :apellidos, :nombres_responsable, :apellidos_responsable, :telefono_responsable, :direccion, :telefono, :edad, :sexo, :estatus, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
