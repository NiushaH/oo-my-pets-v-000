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


  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  # def buy_fish(name)
  #   new_fish = Fish.new(name)
  #   new_fish.owner = self
  #   pets[:fishes] << new_fish

  # end 

  def buy_cat(name)
   @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end


  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end   

  def play_with_cats
    @pets[:cats].each { |dog| dog.mood = "happy" }
  end   


end
