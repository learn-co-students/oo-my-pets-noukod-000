class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name
  
  def initialize(cat_name,cat_mood="nervous")
    @name = cat_name
    @mood = cat_mood
  end
end