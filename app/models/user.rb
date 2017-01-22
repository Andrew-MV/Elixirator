class User < ApplicationRecord
  authenticates_with_sorcery!
  enum role: {
    employee: 0,
    management: 10,
    admin: 20
  }

  def user_name(id)
    @user = User.find(id)
    @user.first_name + ' ' + @user.last_name
  end

end
