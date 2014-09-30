class CreateSolucions < ActiveRecord::Migration
  def change
    create_table :solucions do |t|
      t.string :respuesta
      t.references :questionario, index: true

      t.timestamps
    end
  end
end
