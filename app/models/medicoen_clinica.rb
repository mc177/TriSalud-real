class MedicoenClinica < ApplicationRecord
  belongs_to :clinica
  belongs_to :medico
end
