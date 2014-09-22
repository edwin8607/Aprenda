class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|
      t.string :nombre_centro
      t.string :ciudad
      t.string :codigo
      t.references :regional, index: true

      t.timestamps
    end
  end
end
