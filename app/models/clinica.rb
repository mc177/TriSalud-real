class Clinica < ApplicationRecord
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :user
  has_many :medicoen_clinicas
  has_many :medicos, through: :medicoen_clinicas
end
