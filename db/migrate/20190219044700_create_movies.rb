class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t| 
      t.string :title 
      t.integer :release_date 
      t.string :director 
      t.string :lead  
      t.boolean :in_theaters
    end 
  end
end

class ShoeColor 
  belong_to :color
  belong_to :shoe
end 

class Color 
  has_many :shoes, through: :shoecolor
end 

class Shoe
  belong_to :owner
  #they have foreign key 
end 

class Owner
  has_many :shoes
end 