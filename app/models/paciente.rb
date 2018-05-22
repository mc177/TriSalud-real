class Paciente < ApplicationRecord
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :user
end
