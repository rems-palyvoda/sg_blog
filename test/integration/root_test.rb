require "test_helper"

class RootTest < ActiveSupport::TestCase
  def setup
    create_ten_posts
    visit "/"
  end

  def test_visit_home_page_and_see_blog_title
    assert page.has_content?("SG Blog")
  end

  def test_visit_home_page_and_see_ten_post_titles
    assert_equal 10, page.all("li.post-title").count
  end

  def test_visit_home_page_and_see_button_new_post
    assert page.has_link?("New Post")
  end

  def test_visit_home_page_and_click_button_new_post
    click_link("New Post")
    assert page.has_button?("Create")
  end

  def create_ten_posts
    10.times { |n| Post.create(title: "a_#{n}", body: "AAAA") }
  end
end

