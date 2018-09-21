class Owner
  ALL = []
  attr_accessor :pets

  def self.all
    ALL
  end

  def initialize
    @pets = { fishes: [], cats: [], dogs: [] }
  end
end
