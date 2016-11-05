require "test_helper"

class UserCreatePageTest < ActiveSupport::TestCase

  def setup
    @user = User.create(name: "Test User", email: "test@user.com",
                        password: "foobar",
                        password_confirmation: "foobar")
    visit "/users/#{@user.id}"
  end

  def test_visit_user_show_page_and_see_user_information
    assert page.has_content?(@user.name)
    assert page.has_content?(@user.email)
  end

  def test_visit_user_show_page_and_see_user_control_links
    assert page.has_link?("Edit User")
    assert page.has_link?("Delete User")
  end

end