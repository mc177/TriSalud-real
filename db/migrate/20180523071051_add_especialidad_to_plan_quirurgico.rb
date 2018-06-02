class AddEspecialidadToPlanQuirurgico < ActiveRecord::Migration[5.1]
  def change
  	add_column :plan_quirurgicos, :especialidad, :int
  end
end
