class CreateServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :servicios do |t|
      t.float :costo
      t.string :descripcion,:limit => 255, :null => false
      t.string :estatus,:limit => 1, :null => false

      t.timestamps
    end
  end
end
