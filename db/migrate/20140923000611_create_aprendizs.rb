class CreateAprendizs < ActiveRecord::Migration
  def change
    create_table :aprendizs do |t|
      t.string :nombres
      t.string :apellido
      t.boolean :genero
      t.string :identificacion
      t.string :email
      t.references :ficha, index: true

      t.timestamps
    end
  end
end
