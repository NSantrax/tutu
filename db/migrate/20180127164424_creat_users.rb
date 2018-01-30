class CreatUsers < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |u|
  		u.string :name

  		u.timestamps
  	end
  end
end
