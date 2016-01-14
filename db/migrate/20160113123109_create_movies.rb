class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :category
      t.string :country
      t.integer :year
      t.float :rating
      t.string :opinion
      t.string :actors

      t.timestamps null: false
    end
  end
end
