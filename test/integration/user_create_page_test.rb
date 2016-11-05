require "test_helper"

class UserCreatePageTest < ActiveSupport::TestCase

  def setup
    visit "/users/new"
  end

  def test_user_create_page_has_header
    assert page.has_content?("Page for create user")
  end

  def test_user_create_page_has_form
    assert page.has_field?("Name")
    assert page.has_field?("Email")
    assert page.has_field?("Password")
    assert page.has_field?("Password confirmation")
    assert page.has_button?("Create User")
  end

  def test_redirect_to_user_page_after_create
    page.fill_in("Name", :with => "Test User")
    page.fill_in("Email", :with => "user@test.com")
    page.fill_in("Password", :with => "foobar")
    page.fill_in("Password confirmation", :with => "foobar")
    click_on("Create User")
    assert page.has_content?("Test User")
  end

  def test_create_user_with_invalid_name
    page.fill_in("Name", :with => "")
    click_on("Create User")
    assert page.has_content?("The form")
  end

  def test_create_user_with_invalid_email
    page.fill_in("Email", :with => "")
    click_on("Create User")
    assert page.has_content?("The form")
  end
end