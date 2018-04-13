require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :message => "MyString",
      :users => nil,
      :posts => nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input[name=?]", "comment[message]"

      assert_select "input[name=?]", "comment[users_id]"

      assert_select "input[name=?]", "comment[posts_id]"
    end
  end
end
