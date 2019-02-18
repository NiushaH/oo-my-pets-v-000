class Owner
  attr_accessor :name, :species
  attr_writer
  attr_reader
  
  @@all = []
  
  def initialize(name, species)
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


  def species
    

end