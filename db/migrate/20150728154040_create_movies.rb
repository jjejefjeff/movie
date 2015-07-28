class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb
      t.string :img

      t.timestamps null: false
    end
  end
end
