require 'pry'

class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name,:pets

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
    @species="human"
    @pets = {:fishes:=>[],:dogs=>[],:cats=>[]}
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all=[]
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
    #binding.pry
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    @pets.each do |pet_collection|
      pet_collection.collect do |pet|
        binding.pry
        pet.mood=("nervous")
      end
    end
  end

end
