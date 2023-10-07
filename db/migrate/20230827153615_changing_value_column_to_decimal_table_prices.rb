class ChangingValueColumnToDecimalTablePrices < ActiveRecord::Migration[7.0]
  def change
    change_table :prices do |t|
      t.change :value, :decimal
    end
  end
end
