require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    @movies = assign(:movies, [FactoryGirl.create(:movie), FactoryGirl.create(:movie)])
    binding.pry
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Pride and Prejudice and Zombies".to_s, :count => 2
    assert_select "tr>td", :text => "Action".to_s, :count => 2
    assert_select "tr>td", :text => "United Kingdom".to_s, :count => 2
    assert_select "tr>td", :text => 2016.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Is good! The best part is the Movie name!".to_s, :count => 2
    assert_select "tr>td", :text => "Bella Heathcote".to_s, :count => 2
  end
end
