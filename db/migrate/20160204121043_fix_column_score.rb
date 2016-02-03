class FixColumnScore < ActiveRecord::Migration
  def change
    rename_column :movies, :rating, :score
  end
end
