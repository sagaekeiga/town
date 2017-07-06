class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.text :en_title
      t.text :ja_title
      t.text :en_content
      t.text :ja_content
      t.text :present
      t.text :destination
      t.text :url
      t.text :key
      t.text :movie

      t.timestamps
    end
  end
end
