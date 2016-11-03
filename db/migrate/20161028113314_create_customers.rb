class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
    	t.string :custABN
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :address
    	t.string :phone
    	t.string :pincode
    	t.string :password
    	t.string :confirmation


      t.timestamps
    end
  end
end
