class CreateRols < ActiveRecord::Migration[5.1]
  def change
    create_table :rols do |t|
      t.string :codigo_rol
      t.string :descripcion
      t.string :estatus

      t.timestamps
    end
  end
end
