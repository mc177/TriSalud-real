class CreatePlanQuirurgicos < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_quirurgicos do |t|
      t.references :medico, foreign_key: true
      t.references :paciente, foreign_key: true
      t.date :fecha_consulta
      t.string :descp_consulta, :limit => 255, :null => false
      t.date :fecha_pq
      t.float :presupuesto
      t.string :examen, :limit => 255, :null => false
      t.string :estatus, :limit => 1, :null => false

      t.timestamps
    end
  end
end
