class Owner
    # code goes here
    attr_accessor :name, :pets, :cat, :dog, :fish
    attr_reader :species
    @@all = []

 def initialize(species)
   @species = species
   @name = name
   @@pets = {:fishes => [], :dogs => [], :cats => []}
   @@all << self
 end

 def self.all
   @@all
 end

 def say_species
    return "I am a #{@species}."
  end

 def pets
   @@pets
 end

 def buy_cat(name)
     @@pets[:cats] << Cat.new(name)
   end

   def buy_dog(name)
     @@pets[:dogs] << Dog.new(name)
   end

 def buy_fish(name)
    @@pets[:fishes] << Fish.new(name)
  end

  def play_with_cats
      @@pets[:cats].map do |cat|
        cat.mood = 'happy'
      end
    end

  def walk_dogs
      @@pets[:dogs].map do |dog|
        dog.mood = 'happy'
      end
    end

    def feed_fish
    @@pets[:fishes].map do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
   @pets.collect do |species, instances|
     instances.map do |pet|
       pet.mood = "nervous"
     end
     @pets = {}
   end

 end
  def list_pets
    dog = @@pets[:dogs].size
    cat = @@pets[:cats].size
    fish = @@pets[:fishes].size
    return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end

  def self.reset_all
      @@all.clear
    end

  def self.count
     @@all.size
   end
end
