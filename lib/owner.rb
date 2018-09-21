class Owner
  ALL = []
  attr_accessor :pets
  attr_reader :name

  def self.all
    ALL
  end

  def self.count
    ALL.size
  end

  def self.reset_all
    ALL.clear
  end

  def initialize(name)
    @name = name
    @pets = { fishes: [], cats: [], dogs: [] }
    ALL << self
  end
end
