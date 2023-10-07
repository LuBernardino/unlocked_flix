class AddRelationshipUserToUserMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_movies, :user_id
    change_table :user_movies do |t|
      t.references :users, foreign_key: true
    end
  end
end
