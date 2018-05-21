class Rol < ApplicationRecord
	self.table_name = "rols"
	has_many :users
end
