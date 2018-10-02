class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(specie)
    @species = specie
    Owner.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(pet)
    pets[:fishes] << Fish.new(pet)
  end

  def buy_cat(pet)
    pets[:cats] << Cat.new(pet)
  end

  def buy_dog(pet)
    pets[:dogs] << Dog.new(pet)
  end

  def walk_dogs
    pets[:dogs][-1].mood = "happy"
  end

  def play_with_cats
    pets[:cats][-1].mood = "happy"
  end

  def feed_fish
    pets[:fishes][-1].mood = "happy"
  end

  def sell_pets
    pets.values.flatten.each {|pet| pet.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
