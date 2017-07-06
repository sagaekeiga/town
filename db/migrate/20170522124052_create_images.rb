class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :en_title
      t.text :ja_title
      t.text :en_content
      t.text :ja_content
      t.text :location
      t.text :url
      t.text :image
      t.text :start
      t.text :key
      t.text :movie
      

      t.timestamps
    end
    add_index :images, [:en_title, :ja_title]
  end
end
