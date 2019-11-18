class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
    	t.string :name
    	t.string :age
    	t.string :gender
    	t.string :address
    	t.string :phone_number
    	t.string :email
		t.timestamps
    end
  end
end
