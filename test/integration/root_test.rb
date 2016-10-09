require "test_helper"

class RootTest < ActiveSupport::TestCase
  
  def setup
    create_five_posts
    visit "/"
  end

  def test_visit_home_page_and_see_blog_title
    assert page.has_content?("SG Blog")
  end

  def test_visit_home_page_and_see_five_post_titles
    assert_equal 5, page.all(".list-group-item").count
  end

  def test_visit_home_page_and_see_button_new_post
    assert page.has_button?("New Post")
  end

  def test_visit_home_page_and_click_button_new_post
    click_button("New Post")
    assert page.has_button?("Create")
  end

  def visit_post_show_page_and_delete_this_one
    last_post_title = Post.last.title
    click_link last_post_title
    click_button "Delete Post"
    assert_redirected_to posts_path
    assert page.has_no_content?(last_post_title)
  end

  def create_five_posts
    5.times { |n| Post.create(title: "Post_#{n}", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu blandit metus. Proin luctus, nisi id elementum volutpat, erat mauris semper neque, a commodo quam ante eget risus. Sed sed cras amet.") }
  end
end

