class Fish
  attr_accessor :mood
  attr_reader :name
  # code goes here
  def initialize(name, mood = ())
    @name = name
    self.mood = "nervous"
  end
end