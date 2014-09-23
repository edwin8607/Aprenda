class CreateEquipoAprendizs < ActiveRecord::Migration
  def change
    create_table :equipo_aprendizs do |t|
      t.references :equipo, index: true
      t.references :aprendiz, index: true

      t.timestamps
    end
  end
end
