# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Style 1
    user ||= User.new
    
    if user.admin?
      can :manage, :all
    else
      can :manage, Service, user_id: user.id
      can :read, Service
    end
    
    # Style 2
    # can :read, Service, public: true
    # return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    # can :read, Service, user: user

    # return unless user.admin?  # additional permissions for administrators
    # can :read, Service

    # Style 3
    # user ||= User.new # guest user
    # #abort('some user')
    # if user.admin == 1
    #   can :manage, :all
    # elsif user.admin == 0
    #   can :manage, Micropost do |micropost|
    #     micropost.try(:owner) == user
    #   end
    #   can :update, User do |users|
    #     users.try(:owner) == user
    #   end
    # else
    #  can :read, :all
    # end
  end
end
