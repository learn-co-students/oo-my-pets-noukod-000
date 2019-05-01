class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@Owner = []

  def initialize(species)
    @species = species
    @@Owner << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@Owner
  end

def self.count
    @@Owner.size
end

def self.reset_all
    @@Owner.clear
end

def species
    @species
end

def say_species
  "I am a #{species}."
end

def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
end

def sell_pets
  @pets.collect do |species, instances|
    instances.each do |animal|
      animal.mood = "nervous"
    end
  instances.clear
end
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
