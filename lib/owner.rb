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

def self.reset_all
  @@all.clear
end



end 