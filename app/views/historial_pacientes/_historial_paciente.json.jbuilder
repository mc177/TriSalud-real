json.extract! historial_paciente, :id, :paciente_id, :prob_cardio, :prob_respira, :diabetes, :alergias, :diab_pm, :sobrepso_pm, :hipertension_pm, :epilepsia_pm, :alcohol, :deportes, :tabaco, :drogas, :estatus, :created_at, :updated_at
json.url historial_paciente_url(historial_paciente, format: :json)
