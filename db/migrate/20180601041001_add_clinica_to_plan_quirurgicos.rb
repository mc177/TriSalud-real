class AddClinicaToPlanQuirurgicos < ActiveRecord::Migration[5.1]
  def change
    add_column :plan_quirurgicos, :clinica, :integer
  end
end
