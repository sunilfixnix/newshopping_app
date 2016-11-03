class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
    
    t.references :customer, foreign_key: true, index: true
    t.references :item, foreign_key: true, index: true


      t.timestamps
    end
  end
end
