require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'has a valid factory' do
    @movie = FactoryGirl.create(:movie)
    expect(@movie).to be_valid
  end

  it 'is invalid without a name' do
    name_nil = FactoryGirl.build(:movie, name: nil)
    expect(name_nil).to_not be_valid
  end

  it 'is invalid without a category' do
    category_nil =  FactoryGirl.build(:movie, category: nil)
    expect(category_nil).to_not be_valid
  end

  it 'is invalid without a country' do
    country_nil = FactoryGirl.build(:movie, country: nil)
    expect(country_nil).to_not be_valid
  end

  it 'is a valid year between 1900 and 2099' do
    valid_year = FactoryGirl.build(:movie, year: 1983)
    expect(valid_year.year.to_s).to match(/\A(19|20)\d{2}\z/)
  end

  it 'is an invalid year' do
    invalid_year= FactoryGirl.build(:movie, year: 160)
    expect(invalid_year.year.to_s).to_not match(/\A(19|20)\d{2}\z/)
  end

  it 'is a valid score' do
    valid_score = FactoryGirl.build(:movie, score: 4.5)
    expect(valid_score.score.to_s).to match(/\A-?[0-5]+\.[0-9]+\z/)
  end

  it 'is a not valid score' do
    invalid_score = FactoryGirl.build(:movie, score: 10)
    expect(invalid_score.to_s).to_not match(/\A-?[0-5]+\.[0-9]+\z/)
  end
end