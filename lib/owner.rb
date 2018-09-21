class Owner
  ALL = []
  attr_accessor :pets

  def self.all
  end

  def initialize
    @pets = { fishes: [], cats: [], dogs: [] }
  end
end
