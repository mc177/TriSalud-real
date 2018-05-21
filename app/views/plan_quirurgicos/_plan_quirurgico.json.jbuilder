json.extract! plan_quirurgico, :id, :medico_id, :paciente_id, :fecha_consulta, :descp_consulta, :fecha_pq, :presupuesto, :examen, :estatus, :created_at, :updated_at
json.url plan_quirurgico_url(plan_quirurgico, format: :json)
