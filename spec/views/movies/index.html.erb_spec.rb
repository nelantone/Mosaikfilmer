require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :name => "Name",
        :category => "Category",
        :country => "Country",
        :year => 1,
        :score => 1.5,
        :opinion => "Opinion",
        :actors => "Actors"
      ),
      Movie.create!(
        :name => "Name",
        :category => "Category",
        :country => "Country",
        :year => 1,
        :score => 1.5,
        :opinion => "Opinion",
        :actors => "Actors"
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Opinion".to_s, :count => 2
    assert_select "tr>td", :text => "Actors".to_s, :count => 2
  end
end
