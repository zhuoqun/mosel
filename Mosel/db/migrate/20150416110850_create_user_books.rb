class CreateUserBooks < ActiveRecord::Migration
  def change
    create_table :user_books do |t|
      t.string :user_id
      t.string :book_id
      t.string :book_name
      t.datetime :add_time

      t.string :extra1
      t.string :extra2
      t.string :extra3
      t.string :extra4
      t.string :extra5

      t.timestamps null: false
    end
  end
end
