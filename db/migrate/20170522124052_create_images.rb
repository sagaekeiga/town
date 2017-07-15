class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :en_title, :limit => 1000
      t.text :ja_title, :limit => 1000
      t.text :en_content, :limit => 1000
      t.text :ja_content, :limit => 1000
      t.text :location, :limit => 1000
      t.text :url, :limit => 1000
      t.text :image, :limit => 1000
      t.text :start, :limit => 1000
      t.text :key, :limit => 1000
      t.text :movie, :limit => 1000
      

      t.timestamps
    end
  end
end
