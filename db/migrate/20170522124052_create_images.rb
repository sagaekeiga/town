class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :en_title
      t.string :ja_title
      t.string :en_content
      t.string :ja_content
      t.string :location
      t.string :url
      t.string :image
      t.string :start
      t.string :key
      

      t.timestamps
    end
    add_index :images, [:en_title, :ja_title]
  end
end
