class CreateUserMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :user_movies do |t|
      t.integer :user_id
      t.integer :movie_api_id
      t.datetime :rent_date
      t.datetime :return_date
      t.integer :value

      t.timestamps
    end
  end
end
