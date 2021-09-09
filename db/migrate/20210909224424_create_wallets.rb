class CreateWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :wallets do |t|
      t.float :money

      t.timestamps
    end
  end
end
