class Owner
  attr_accessor :name
  attr_writer
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @name = name
    @@all << self
    @species = species
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




end