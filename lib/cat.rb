class Cat
  attr_accessor :mood
  attr_reader :name
  # code goes here
  def initialize(name, mood = nil)
    @mood = mood
    @name = name
    self.mood = "nervous"
  end
  
  
  
end