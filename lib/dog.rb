class Dog
  # code goes here
  attr_reader :name, :mood
  attr_writer :mood
  
  def initialize(name="cat", mood="nervous")
    @name=name
    @mood=mood
  end
end