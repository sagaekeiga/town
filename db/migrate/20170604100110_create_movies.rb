class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :en_title
      t.string :ja_title
      t.string :en_content
      t.string :ja_content
      t.string :present
      t.string :destination
      t.string :url

      t.timestamps
    end
  end
end
