class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :particular
      t.float :amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
