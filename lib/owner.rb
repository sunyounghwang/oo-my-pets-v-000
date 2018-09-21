require "pry"

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
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each do |type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pets[type] = []
    end
  end

  def list_pets
    puts pets.values
  end
end
