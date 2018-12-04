class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.persisted?
      if user.admin?
        can :access, :rails_admin
        can :read, :dashboard
        can :manage, :all
      elsif user.user?
        can :read, Course
      end
    else

    end

  end
end
