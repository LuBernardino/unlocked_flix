class ChangingValueColumnToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_table :user_movies do |t|
      t.change :value, :decimal
    end
  end
end
