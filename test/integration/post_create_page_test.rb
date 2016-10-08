require "test_helper"

class PostCreatePageTest < ActiveSupport::TestCase

  def setup
    visit "/posts/new"
  end

  def test_visit_post_create_page_and_see_labels
    assert page.has_content?("Title")
    assert page.has_content?("Body")
  end

  def test_visit_post_create_page_and_see_field_title
  	assert page.has_field?("Title")
  end

  def test_visit_post_create_page_and_see_field_body
  	assert page.has_field?("Body")
  end

  def test_visit_post_create_page_and_see_create_button
  	assert page.has_button?("Create Post")
  end

  def test_create_new_post_and_redirect_to_his_show_page
    page.fill_in("Title", :with => "a_10")
    page.fill_in("Body", :with => "BBBB")
    page.click_on("Create Post")
    assert page.has_content?("a_10")
    assert page.has_content?("BBBB")
  end
end