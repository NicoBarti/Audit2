class DeleteColumnFromItems < ActiveRecord::Migration[5.1]
  def change
  	remove_column(:items, :hola)
  end
end
