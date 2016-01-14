require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "MyString",
      :category => "MyString",
      :country => "MyString",
      :year => 1,
      :rating => 1.5,
      :opinion => "MyString",
      :actors => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_category[name=?]", "movie[category]"

      assert_select "input#movie_country[name=?]", "movie[country]"

      assert_select "input#movie_year[name=?]", "movie[year]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "input#movie_opinion[name=?]", "movie[opinion]"

      assert_select "input#movie_actors[name=?]", "movie[actors]"
    end
  end
end
