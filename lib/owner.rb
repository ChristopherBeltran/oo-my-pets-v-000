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
  



end 