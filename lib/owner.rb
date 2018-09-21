class Owner
  ALL = []
  attr_accessor :pets

  def initialize
    @pets = { fishes: [], cats: [], dogs: [] }
  end
end
