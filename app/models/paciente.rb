class Paciente < ApplicationRecord
  #belongs_to :user
  validates :ced_paciente, :nombres, :apellidos, :nombres_responsable, :apellidos_responsable, :telefono_responsable, :direccion, :telefono, presence: true 
  validates :ced_paciente, uniqueness: true
  validates :edad, numericality: true
end
