class Servicio < ApplicationRecord
  has_many :servicio_seleccionados
  has_many :plan_quirurgicos, through: :servicio_seleccionados
end
