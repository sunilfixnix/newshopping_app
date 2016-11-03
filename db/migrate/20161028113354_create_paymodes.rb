class CreatePaymodes < ActiveRecord::Migration[5.0]
  def change
    create_table :paymodes do |t|
    	t.string :name
    	t.string :card_holder_name
    	t.string :cardnumber
    	t.string :validity
    	t.integer :CCV
    	t.references :order, foreign_key: true, index: true


      t.timestamps
    end
  end
end
