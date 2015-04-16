class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :user_id
      t.string :name
      t.string :desc
      t.string :user_name
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
