class Owner
  ALL = []
  attr_accessor :pets

  def self.all
    ALL
  end

  def initialize(name)
    @pets = { fishes: [], cats: [], dogs: [] }
  end
end
