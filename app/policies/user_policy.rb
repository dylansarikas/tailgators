class UserPolicy
  attr_reader :user, :profile

  def initialize(user, profile)
    @user = user
    @profile = profile
  end

  def show?
    user == profile
  end
end
