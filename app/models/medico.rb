class Medico < ApplicationRecord
  belongs_to :especialidad
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :medicoen_clinicas
  has_many :clinicas, through: :medicoen_clinicas
  after_create :save_clinicas
  def clinicas=(value)
  	@clinicas = value
  end

  private
  def save_clinicas
  	@clinicas.each do |clinica_id|
  		MedicoenClinica.create(clinica_id: clinica_id, medico_id: self.id)
  	
  end
end
end
