class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name 
  
  def initialize(fish_name,fish_mood = "nervous")
    @name = fish_name
    @mood = fish_mood
  end 
end