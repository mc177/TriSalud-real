class CreatePacientes < ActiveRecord::Migration[5.1]
  def change
    create_table :pacientes do |t|
      t.references :user, foreign_key: true
      t.string :ced_paciente, :limit => 255, :null => false
      t.string :nombres, :limit => 255, :null => false
      t.string :apellidos, :limit => 255, :null => false
      t.string :nombres_responsable, :limit => 255, :null => false
      t.string :apellidos_responsable, :limit => 255, :null => false
      t.string :telefono_responsable, :limit => 255, :null => false
      t.string :direccion, :limit => 255, :null => false
      t.string :telefono, :limit => 255, :null => false
      t.string :edad, :limit => 255, :null => false
      t.string :sexo, :limit => 255, :null => false
      t.string :estatus, :limit => 1, :null => false

      t.timestamps
    end
  end
end
