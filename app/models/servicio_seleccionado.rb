class ServicioSeleccionado < ApplicationRecord
  belongs_to :servicio
  belongs_to :plan_quirurgico
end
