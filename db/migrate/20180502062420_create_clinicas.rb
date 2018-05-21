class CreateClinicas < ActiveRecord::Migration[5.1]
  def change
    create_table :clinicas do |t|
      t.references :user, foreign_key: true
      t.string :rif,:limit => 255, :null => false
      t.string :nombre,:limit => 255, :null => false
      t.string :direccion,:limit => 255, :null => false
      t.string :estatus,:limit => 1, :null => false

      t.timestamps
    end
  end
end
