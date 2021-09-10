class CreateCashFlows < ActiveRecord::Migration[6.1]
  def change
    create_table :cash_flows do |t|
      t.float :money
      t.boolean :income
      t.string :category
      t.string :name
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
