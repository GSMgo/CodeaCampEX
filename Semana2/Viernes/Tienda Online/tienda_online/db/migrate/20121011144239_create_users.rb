class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # Completa con las columnas que necesites
      t.string :user_type
      t.string :username
      t.string :email
      t.string :password      
    end
  end
end
