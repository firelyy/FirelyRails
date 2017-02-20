class AuthenticateUser
  prepend SimpleCommand

  def initialize(cell, password)
    @cell = cell
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :cell, :password

  def user
    user = User.find_by cell: cell
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end