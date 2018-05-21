class Especialidad < ApplicationRecord
	self.table_name = "especialidads"
	has_many :medicos
end
