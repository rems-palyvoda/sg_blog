require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def setup
    Post.create(title: "Post_one_for test", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu blandit metus. Proin luctus, nisi id elementum volutpat, erat mauris semper neque, a commodo quam ante eget risus. Sed sed cras amet.")
    Comment.create(body: "default comment", post_id: Post.take.id)
    visit "/posts/#{Post.take.id}"
  end

  def test_create_comment
    # new_comment
    page.fill_in("comment[body]", :with => "This is a comment")
    click_button "My Comment"
    assert page.has_content?("This is a comment")
  end

  def test_delete_comment
    assert page.has_content?("default comment")
    click_link "Delete Comment"
    assert page.has_no_content?("default comment")
  end
end