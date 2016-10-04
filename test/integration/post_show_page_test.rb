require "test_helper"

class PostShowPageTest < ActiveSupport::TestCase  

  def setup
    lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                   Aenean eu blandit metus. Proin luctus, nisi id elementum
                   volutpat, erat mauris semper neque, a commodo quam ante
                   eget risus. Sed sed cras amet."
    Post.create(title: "post_a", body: lorem_ipsum)
    Post.create(title: "post_b", body: lorem_ipsum)
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