class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_name
      t.string :password
      t.integer :gender
      t.string :name
      t.string :avatar
      t.string :provider
      t.string :oauth_token
      t.integer :disable
      t.string :password_reset_token
      t.datetime :password_sent_at

      t.string :extra1
      t.string :extra2
      t.string :extra3
      t.string :extra4
      t.string :extra5

      t.timestamps null: false
    end
  end
end
