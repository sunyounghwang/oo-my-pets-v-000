class Owner
  ALL = []
  attr_accessor :pets, :name
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

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end
