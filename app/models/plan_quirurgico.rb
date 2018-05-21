class PlanQuirurgico < ApplicationRecord
  #belongs_to :medico
  #belongs_to :paciente
  mount_uploader :examen, ExamenUploader
end
