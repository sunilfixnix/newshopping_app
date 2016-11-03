class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
    	t.string :linenumber
    	t.string :quantity
    	t.references :invoice, foreign_key: true, index: true



      t.timestamps
    end
  end
end
