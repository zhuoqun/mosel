class CreateClippings < ActiveRecord::Migration
  def change
    create_table :clippings do |t|
      t.string :user_id
      t.string :book_id
      t.string :user_name
      t.string :book_name
      t.string :location
      t.string :page
      t.string :type
      t.text :content
      t.datetime :add_time
      t.integer :delete

      t.string :extra1
      t.string :extra2
      t.string :extra3
      t.string :extra4
      t.string :extra5

      t.timestamps null: false
    end
  end
end
