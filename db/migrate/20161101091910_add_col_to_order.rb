class AddColToOrder < ActiveRecord::Migration[5.0]
  def change
  	add_column :orders, :name, :string
  end
end
