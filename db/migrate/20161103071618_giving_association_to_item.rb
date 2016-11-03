class GivingAssociationToItem < ActiveRecord::Migration[5.0]
  def change
  	add_reference :carts, :item
  end
end
