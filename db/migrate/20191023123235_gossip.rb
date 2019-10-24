class Gossip < ActiveRecord::Migration[5.2]
  def change
  	  create_table :gossips do |t|
  	  	t.string :title
  	  	t.text :content
	    t.belongs_to :users, index: true
	    t.belongs_to :tags, index: true
	    t.belongs_to :cities, index: true
	    t.timestamps
	  end
  end
end
