require "test_helper"

class PostEditPageTest < ActiveSupport::TestCase
  
  def setup
    Post.create(title: "Post_one_for test", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu blandit metus. Proin luctus, nisi id elementum volutpat, erat mauris semper neque, a commodo quam ante eget risus. Sed sed cras amet.")
    visit "/posts/#{Post.take.id}"
    click_button("Edit Post")
  end

  def test_page_has_form_for_edit_post
    assert page.has_button?("Update existing post")
  end

  def test_edit_post_and_see_edited_title
    page.fill_in("Title", :with => "Edited post title")
    click_button "Update existing post"
    assert page.has_content?("Edited post title")
  end

end