require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "GET /movies" do
    xit "works! (now write some real specs)" do
      get movies_path
      expect(response).to have_http_status(302)
    end
  end
end
