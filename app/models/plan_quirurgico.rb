class PlanQuirurgico < ApplicationRecord
  belongs_to :medico
  belongs_to :paciente
  mount_uploader :examen, ExamenUploader
  has_many :servicio_seleccionados
  has_many :plan_quirurgicos, through: :servicio_seleccionados
  after_create :save_servicios
	  def servicios=(value)
	  	@servicios = value
	  end

	  private
	  	def save_servicios
	  		@servicios.each do |servicio_id|
	  			ServicioSeleccionado.create(servicio_id: servicio_id, plan_quirurgico_id: self.id)
	  	
	  	end
	  end
end
