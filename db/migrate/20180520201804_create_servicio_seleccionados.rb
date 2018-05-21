class CreateServicioSeleccionados < ActiveRecord::Migration[5.1]
  def change
    create_table :servicio_seleccionados do |t|
      t.references :servicio, foreign_key: true
      t.references :plan_quirurgico, foreign_key: true

      t.timestamps
    end
  end
end
