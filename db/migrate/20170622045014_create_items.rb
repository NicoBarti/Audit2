class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :i1
      t.integer :i2
      t.integer :i3
      t.integer :total

      t.timestamps
    end
  end
end
