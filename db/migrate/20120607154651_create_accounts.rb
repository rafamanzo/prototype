class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :bank
      t.string :agency
      t.string :number
      t.decimal :funds_cents
      t.integer :user_id

      t.timestamps
    end
  end
end
