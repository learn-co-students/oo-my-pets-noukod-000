class Owner
  attr_accessor :name,:pets
  attr_reader :species
  # code goes here
  @@owner_list = []
   @@count = 0 
  def initialize(name,species="human")
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owner_list << self
    @@count += 1 
  end 
   ##the class methods
  def self.all 
    @@owner_list
  end 
  
  def self.reset_all
    @@count = 0 
  end 
  
  def self.count
    @@count
  end 
  
  ##the instance methods
  def say_species
    "I am a human."
  end 
  
  def buy_fish(new_fish)
    fish = Fish.new(new_fish)
    pets[:fishes] << fish 
  end 
  
   def buy_cat(new_cat)
    cat = Cat.new(new_cat)
    pets[:cats] << cat
  end 
  
  def buy_dog(new_dog)
    dog = Dog.new(new_dog)
    pets[:dogs] << dog
  end 
  
  def walk_dogs
    @pets[:dogs].each {|val| val.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|val| val.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|val| val.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |kind, pet|
      pet.map {|pet_mood| pet_mood.mood = "nervous"}
    end
    pets.clear
  end
  
  def list_pets
     "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
  
end