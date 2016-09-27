require "test_helper"
require 'capybara/rails'

class PostShowPageTest < ActiveSupport::TestCase  

  def setup
    Post.create(title: "post_a", body: "AAAA")
    Post.create(title: "post_b", body: "BBBB")
    visit "/"
  end

  def test_link_to_post_show_page_post_a
    click_link("post_a")
    (assert page.has_content?("AAAA")) && (assert page.has_no_content?("BBBB"))
  end

  def test_link_to_post_show_page_post_b
    click_link("post_b")
    (assert page.has_content?("BBBB")) && (assert page.has_no_content?("AAAA"))
  end

end