class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :nombre
      t.string :apellidos
      t.boolean :genero
      t.string :identificacion
      t.string :email
      t.string :titulo
      t.references :centro, index: true

      t.timestamps
    end
  end
end
