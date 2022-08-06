class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :author, foreign_key: { to_table: :users }, null: false
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
