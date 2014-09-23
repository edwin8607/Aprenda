class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre_equipo

      t.timestamps
    end
  end
end
