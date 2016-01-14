require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "Name",
      :category => "Category",
      :country => "Country",
      :year => 1,
      :rating => 1.5,
      :opinion => "Opinion",
      :actors => "Actors"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Opinion/)
    expect(rendered).to match(/Actors/)
  end
end
