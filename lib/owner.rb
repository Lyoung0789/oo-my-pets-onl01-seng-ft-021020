require 'pry'

class Owner
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name 
     @new_arr=[]
     @@all << self
  end 
  
  def species
    @species = "human"
  end 
  
  def say_species
    return "I am a human."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  

  
  def cats
    Cat.all.select {|i| i.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|i| i.owner == self}
  end 
end