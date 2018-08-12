class Gym
 ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self

  end

  def self.all
    ALL
  end

  def memberships
    Membership.all.select do |membership_instance|
      membership_instance.gym == self
    end
  end

  def lifter_memberships
    self.memberships.map do |membership_instance|
      membership_instance.name
    end
  end

  def combined_lift_total
    total = 0
    self.memberships.each do |membership_instance|
      total += membership_instance.name.lift_total
    end
    total
  end

end #end of class
