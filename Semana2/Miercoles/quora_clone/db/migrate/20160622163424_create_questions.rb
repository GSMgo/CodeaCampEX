class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      # Completa con las columnas que necesites
      t.integer :userid
      t.string :text
    end
  end
end
