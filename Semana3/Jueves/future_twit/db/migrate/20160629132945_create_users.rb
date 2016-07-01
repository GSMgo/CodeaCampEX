class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :screen_name
      t.string :oauth_token
      t.string :oauth_token_secret
      t.timestamp
    end
  end
end