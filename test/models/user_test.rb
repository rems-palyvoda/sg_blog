require "test_helper"

class UserTest < ActiveSupport::TestCase

  def user
    user = User.create(name: "example name", email: "name@mail.com")
  end

  def test_valid
    # assert user.valid?
  end

  def test_name_should_be_present
    # user.name = ""
    # assert user.valid?
  end

  def test_email_should_be_present
  end

end
