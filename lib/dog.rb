class Dog
  attr_accessor :mood, :owner
  attr_writer
  attr_reader :name
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  
end