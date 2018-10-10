#require "pry"
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
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
