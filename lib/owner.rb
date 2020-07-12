
class Owner


  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end


  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    # "I am a human."
    "I am a #{species}."
  end

 def buy_fish(fish_name)
   @pets[:fishes] << Fish.new(fish_name)
 end

 def buy_cat(cat_name)
   @pets[:cats] << Cat.new(cat_name)
 end

 def buy_dog(dog_name)
   @pets[:dogs] << Dog.new(dog_name)
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
  #  "I have 2 fish, 3 dog(s), and 1 cat(s)."
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
 end


end
