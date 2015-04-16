class CreateUserStats < ActiveRecord::Migration
  def change
    create_table :user_stats do |t|
      t.string :user_id
      t.string :books_cnt
      t.string :clippings_cnt
      t.string :favorites_cnt
      t.string :followers_cnt
      t.string :follows_cnt
      t.datetime :last_login

      t.string :extra1
      t.string :extra2
      t.string :extra3
      t.string :extra4
      t.string :extra5

      t.timestamps null: false
    end
  end
end
