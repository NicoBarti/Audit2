class CreatePerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :perfils do |t|
      t.string :sexo
      t.date :f_nac
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
