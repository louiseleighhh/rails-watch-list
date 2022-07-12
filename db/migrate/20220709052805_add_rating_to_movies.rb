class AddRatingToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :rating, :string
  end
end
