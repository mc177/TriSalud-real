class CreateHistorialPacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :historial_pacientes do |t|
      t.references :paciente, foreign_key: true
      t.boolean :prob_cardio
      t.boolean :prob_respira
      t.boolean :diabetes
      t.boolean :alergias
      t.string :diab_pm, :limit => 255, :null => false
      t.string :sobrepso_pm, :limit => 255, :null => false
      t.string :hipertension_pm, :limit => 255, :null => false
      t.string :epilepsia_pm, :limit => 255, :null => false
      t.boolean :alcohol
      t.boolean :deportes
      t.boolean :tabaco
      t.boolean :drogas
      t.string :estatus, :limit => 1, :null => false
      t.timestamps
    end
  end
end
