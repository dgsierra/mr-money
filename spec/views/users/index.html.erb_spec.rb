require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        bio: "MyText",
        email: "test@mail.com",
        password: "123456",
        password_confirmation: "123456"
      ),
      User.create!(
        name: "Name",
        bio: "MyText",
        email: "test2@mail.com",
        password: "123456",
        password_confirmation: "123456"
      )
    ])
  end
# FIX THIS
  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
