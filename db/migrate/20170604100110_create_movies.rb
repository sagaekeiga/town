class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.text :en_title, :limit => 100
      t.text :ja_title, :limit => 100
      t.text :en_content, :limit => 100
      t.text :ja_content, :limit => 100
      t.text :present, :limit => 100
      t.text :destination, :limit => 100
      t.text :url, :limit => 100
      t.text :key, :limit => 100
      t.text :movie, :limit => 100

      t.timestamps
    end
  end
end
