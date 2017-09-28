class CrateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # Completa con las columnas que necesites
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
end