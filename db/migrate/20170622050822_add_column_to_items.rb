class AddColumnToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :hola, :string
  end
end
