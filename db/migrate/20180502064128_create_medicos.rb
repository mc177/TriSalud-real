class CreateMedicos < ActiveRecord::Migration[5.1]
  def change
    create_table :medicos do |t|
      t.references :user, foreign_key: true
      t.references :especialidad, foreign_key: true
      t.string :nombres,:limit => 255, :null => false
      t.string :apellidos,:limit => 255, :null => false
      t.string :direccion,:limit => 255, :null => false
      t.string :telefono,:limit => 255, :null => false
      t.string :edad,:limit => 255, :null => false
      t.string :sexo,:limit => 255, :null => false
      t.string :estatus,:limit => 255, :null => false

      t.timestamps
    end
  end
end
