class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :ISBN
      t.string :publisher
      t.datetime :pub_time
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
