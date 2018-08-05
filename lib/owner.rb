class Owner
  
  attr_reader :species
  
def initialize(name)
  @name = name
  @pets = {fishes: [], cats: [], dogs: []}
  @species = "human"
end
end 