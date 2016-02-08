require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, FactoryGirl.create(:user))
  end

  xit "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@user), "post" do #???

      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
