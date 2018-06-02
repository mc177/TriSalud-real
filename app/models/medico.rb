class Medico < ApplicationRecord
  #belongs_to :user
  #belongs_to :especialidad
  validates :nombres, :apellidos, :direccion, :telefono, :edad, :sexo, presence:true
  validates :edad, numericality: true
end
