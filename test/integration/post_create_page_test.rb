require "test_helper"

class PostCreatePageTest < ActiveSupport::TestCase

  def setup
    visit "/posts/new"
  end

  def visit_post_create_page_and_see_labels
    assert page.has_content?("Title")
    assert page.has_content?("Body")
  end

  def visit_post_create_page_and_see_field_title
  	assert page.has_field?("Title")
  end

  def visit_post_create_page_and_see_field_body
  	assert page.has_field?("Body")
  end

  def visit_post_create_page_and_see_create_button
  	assert page.has_button?("Create")
  end
end