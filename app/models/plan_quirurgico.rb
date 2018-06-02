class PlanQuirurgico < ApplicationRecord
  #belongs_to :medico
  #belongs_to :paciente
  validates :descp_consulta, :presupuesto, presence: true
  validates :presupuesto, numericality: true
  mount_uploader :examen, ExamenUploader
 
end
