class Owner
  # code goes here
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []
  
  def initialize(species=())
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
    def self.all
    @@all
  end

   def self.reset_all
    @@all.clear
  end

   def self.count
    @@all.length
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
  
  
  ### each dog was created with an instance of class Dog when there were bought
  def walk_dogs
    @pets[:dogs].each{ |each_dog| each_dog.mood="happy"}
  end
  
  def play_with_cats
    @pets[:cats].each{ |each_cat| each_cat.mood="happy"}
  end
  
  def feed_fish
    @pets[:fishes].each{ |each_fish| each_fish.mood="happy"}
  end
  
    def sell_pets
    @pets.each{|type,names| names.map{|pet| pet.mood = "nervous"}}
    pets.clear
  end

   def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
  
end