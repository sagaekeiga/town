class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :en_title, :limit => 100
      t.text :ja_title, :limit => 100
      t.text :en_content, :limit => 100
      t.text :ja_content, :limit => 100
      t.text :location, :limit => 100
      t.text :url, :limit => 100
      t.text :image, :limit => 100
      t.text :start, :limit => 100
      t.text :key, :limit => 100
      t.text :movie, :limit => 100
      

      t.timestamps
    end
  end
end
