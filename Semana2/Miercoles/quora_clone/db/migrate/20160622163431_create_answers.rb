class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      # Completa con las columnas que necesites
      t.integer :userid
      t.integer :questionid
      t.string :text
    end
  end
end
