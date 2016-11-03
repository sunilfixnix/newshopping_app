class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
    	t.string :name
    	t.text :description
    	t.string :price
    	t.references :bill, foreign_key: true, index: true


      t.timestamps
    end
  end
end
