class CreateQuestionarios < ActiveRecord::Migration
  def change
    create_table :questionarios do |t|
      t.string :pregunta
      t.references :tema, index: true

      t.timestamps
    end
  end
end
