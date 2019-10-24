class User < ActiveRecord::Migration[5.2]
  def change
  	  create_table :users do |t|
	    t.string :first_name
	    t.string :last_name
	    t.text :description
	    t.string :email
	    t.integer :age
	    t.belongs_to :cities, index: true
	    t.timestamps
	  end
  end
end
