
class Lifter



  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership_instance|
      membership_instance.name == self
    end
  end

  def self.avg_lift_total
    counter = 0
    @@all.each do |lifter_instance|
      counter += lifter_instance.lift_total
    end
    counter.to_f / @@all.length
  end

  def total_membership_costs
    total = 0
    self.memberships.each do |membership_instance|
      total += membership_instance.cost
    end
    total
  end

  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
  end



end
