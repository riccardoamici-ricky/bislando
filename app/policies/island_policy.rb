class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  #  record.user == user
  # end

  def my_islands?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
