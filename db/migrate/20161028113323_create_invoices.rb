class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
    	t.string :custABN
    	t.date :created
    	t.references :customer, foreign_key: true, index: true


      t.timestamps
    end
  end
end
