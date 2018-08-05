class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
@@all = []
  
def initialize(name)
  @name = name
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
  @@all << self
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

def say_species
  return "I am a #{@species}."
end 

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  fish.owner = self
end 

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
  dog.owner = self
end 

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  cat.owner = self
end 

def walk_dogs
  @pets[:dogs][:mood] = "happy"
  
end 




end 