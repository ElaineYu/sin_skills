class CreateProficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.integer :user_id
  		t.integer :skill_id
  		t.integer :years_of_experience
  		t.boolean :is_formal, :default => false
  	end
  end
end
