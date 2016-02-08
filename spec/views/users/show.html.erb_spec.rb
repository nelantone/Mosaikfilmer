require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, FactoryGirl.create(:user))
  end

  xit "renders attributes in <p>" do
    render #edit_user_registration_path?
    expect(rendered).to match(/Email/)
  end
end
