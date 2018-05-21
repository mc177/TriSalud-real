class CreateMedicoenClinicas < ActiveRecord::Migration[5.1]
  def change
    create_table :medicoen_clinicas do |t|
      t.references :clinica, foreign_key: true
      t.references :medico, foreign_key: true

      t.timestamps
    end
  end
end
