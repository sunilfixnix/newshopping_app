class AddNewColIntoCartAsItem < ActiveRecord::Migration[5.0]
  def change
  	add_reference :items, :cart
  	
  end
end
