class CreateBlackflags < ActiveRecord::Migration
  def change
    create_table :blackflags do |t|
	 t.integer :EmpID 
      t.string :Name
      t.string :ATTUID
	  t.string :MailID
	  t.string :GitHubID
	  t.string :APIGEE_ID
	  t.string :Foundry_ID
	  t.integer :ContactNum
	  t.datetime :DOB
      t.timestamps

      
    end
  end
end
