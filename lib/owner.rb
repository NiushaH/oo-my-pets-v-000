class Owner
  attr_accessor :name, :pets
  attr_writer
  attr_reader :species
  
  @@all = []
  
  def initialize(species, pets = {:fishes => [], :dogs => [], :cats=> []})
    @name = name
    @@all << self
    @species = species
    @pets = pets
  end

  def self.all
    @@all
  end 

  def self.count 
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end 

  def buy_fish
    "Bubbles"
  end


end
