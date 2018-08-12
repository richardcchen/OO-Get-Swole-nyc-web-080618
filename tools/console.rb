require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lifter1 = Lifter.new("lifter1", 200)
lifter2 = Lifter.new("lifter2", 200)
lifter3 = Lifter.new("lifter3", 300)
lifter4 = Lifter.new("lifter4", 400)
lifter5 = Lifter.new("lifter5", 500)

gym1 = Gym.new("gym1")
gym2 = Gym.new("gym2")
gym3 = Gym.new("gym3")
gym4 = Gym.new("gym4")
gym5 = Gym.new("gym5")

membership1 = Membership.new(lifter1, gym1, 50)
membership2 = Membership.new(lifter2, gym1, 10)
membership3 = Membership.new(lifter3, gym2, 20)
membership4 = Membership.new(lifter4, gym3, 40)
membership5 = Membership.new(lifter5, gym4, 50)
membership6 = Membership.new(lifter1, gym5, 200)
membership7 = Membership.new(lifter2, gym5, 50)

lifter1.memberships
lifter2.memberships
lifter3.sign_up(gym3, 500)
gym1.lifter_memberships



binding.pry
