class CreateMovieForms < ActiveRecord::Migration[7.2]
  def change
    create_table :movie_forms do |t|
      t.integer :movie_id
      t.string :title
      t.date :year
      t.string :cast
      t.string :description
      t.boolean :dvd
      t.boolean :blu_ray

      t.timestamps
    end
  end
end
