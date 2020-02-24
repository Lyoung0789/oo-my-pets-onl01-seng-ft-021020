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
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs 
    Dog.all.collect do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats 
    Cat.all.collect do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets 
    Dog.all.collect do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end 
    Cat.all.collect do |cat|
      cat.mood = "nervous"
      cat.owner= nil
    end 
  end 
  
  def list_pets 
    puts "I have #{Dog.all.count} dog(s), and #{Cat.all.count} cat(s)."
  end 
end