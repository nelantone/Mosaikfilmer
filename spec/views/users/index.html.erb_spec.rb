require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      @user1 = FactoryGirl.create(:user),
      @user2 = FactoryGirl.create(:user)
    ])
  end

  xit "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
