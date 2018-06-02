class Clinica < ApplicationRecord
  #belongs_to :user
  validates :rif, :nombre, :direccion, presence:true


end
