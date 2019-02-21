class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def password
    @password
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age.to_i
  end
end

class Authenticate

  def initialize(user)
    @user = user
  end

  def authenticate(candidate_password)
    return true if candidate_password == @user.password
    false
  end

end

 u = User.new("Sureka", "F", "31", "mCaSt1006")

 a = Authenticate.new(u)

 puts a.authenticate("mCaSt1006")
