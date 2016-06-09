class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      # Completa con las columnas que necesites
      t.string :text
      t.boolean :completed
    end
  end
end
