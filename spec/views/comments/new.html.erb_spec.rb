require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :message => "MyString",
      :users => nil,
      :posts => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[message]"

      assert_select "input[name=?]", "comment[users_id]"

      assert_select "input[name=?]", "comment[posts_id]"
    end
  end
end
