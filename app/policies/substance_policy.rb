class SubstancePolicy < ApplicationPolicy
  attr_reader :current_user, :model

  # Inherited from ApplicationPolicy:
  # def initialize(user, resource)
      # @user = user
      # @resource = resource
  # end

  def initialize(current_user, model)
    @current_user = current_user
    @substance = model
  end

  def create?
    current_user.admin? || current_user.editor?
  end

  def update?
    current_user.admin? || current_user.editor? || record.try(:user) == user
  end

  def destroy?
    return false if @current_user == @user
    current_user.admin?
  end
end
