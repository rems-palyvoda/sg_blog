require "test_helper"
require 'capybara/rails'

class PostShowPageTest < ActiveSupport::TestCase  

  def setup
    Post.create(title: "post_a", body: "AAAA")
    Post.create(title: "post_b", body: "BBBB")
    visit "/"
  end

  def test_show_page_has_post_title
  	click_link("post_a")
  	assert page.has_content?("post_a")
  end

  def test_show_page_has_post_body
  	click_link("post_a")
  	assert page.has_content?("post_a")
  end

  def test_show_page_has_two_buttons_delete_and_edit
  	click_link("post_a")
  	assert page.has_button?("Edit")
  	assert page.has_button?("Delete")
  end

  def test_link_to_post_show_page_post_a
    click_link("post_a")
    (assert page.has_content?("post_a")) && (assert page.has_no_content?("post_b"))
  end

  def test_link_to_post_show_page_post_b
    click_link("post_b")
    (assert page.has_content?("post_b")) && (assert page.has_no_content?("post_a"))
  end

end