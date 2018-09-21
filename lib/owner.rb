class Owner
  ALL = []
  attr_accessor :pets
  attr_reader :species

  def self.all
    ALL
  end

  def self.count
    ALL.size
  end

  def self.reset_all
    ALL.clear
  end

  def initialize(species)
    @species = species
    @pets = { fishes: [], cats: [], dogs: [] }
    ALL << self
  end
end
