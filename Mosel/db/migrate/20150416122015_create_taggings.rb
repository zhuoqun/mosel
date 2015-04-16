class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string :tag_id
      t.string :target_id
      t.string :target_type

      t.string :extra1
      t.string :extra2
      t.string :extra3
      t.string :extra4
      t.string :extra5

      t.timestamps null: false
    end
  end
end
