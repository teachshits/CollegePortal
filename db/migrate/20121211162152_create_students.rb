class CreateStudents < ActiveRecord::Migration
  def change
  	create_table :students do |t|
  	  t.timestamps
  	  t.string :lessons
  	end  
  end
end
