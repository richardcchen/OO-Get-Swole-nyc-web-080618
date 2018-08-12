class Membership


  attr_reader :cost
  attr_accessor :name, :gym


  @@all = []
  def initialize(name, gym, cost)
    @name = name
    @gym = gym
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

  



end
