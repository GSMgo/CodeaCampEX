class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      # Completa con las columnas que necesites
      t.string :name
      t.float :price
      
    end
  end
end
