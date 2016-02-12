require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  let(:user_with_no_movie) { FactoryGirl.create(:user) }
  let(:user_with_movies) { FactoryGirl.create(:user_with_movies) }

  let(:movie) { FactoryGirl.create(:movie) }
  let(:movies) { FactoryGirl.create_list(:movie, 5) }

  let(:valid_attributes) {
    FactoryGirl.build(:movie).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:movie, year: 3000, score: 10 ).attributes
  }

  describe "GET #index" do
    it "assigns all movies as @movies" do
      sign_in user_with_movies
      get :index
      movies = user_with_movies.movies
      expect(assigns(:movies)).to eq(movies)
    end
  end

  describe "GET #show" do
    it "assigns the requested movie as @movie" do
     sign_in user_with_movies
      movie = user_with_movies.movies.first
      get :show, {:id => movie.to_param }
      expect(assigns(:movie)).to eq(movie)
    end
  end

  describe "GET #new" do
    it "assigns a new movie as @movie" do
      sign_in user_with_no_movie
      get :new, {}
      expect(assigns(:movie)).to be_a_new(Movie)
    end
  end

  describe "GET #edit" do
    it "assigns the requested movie as @movie" do
      sign_in user_with_movies
      movie = user_with_movies.movies.first
      get :edit, {:id => movie.to_param}
      expect(assigns(:movie)).to eq(movie)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Movie" do
        expect {
          post :create, {:movie => movie }
          }.to change(Movie, :count).by(1)
      end

      it "assigns a newly created movie as @movie" do
        sign_in user_with_no_movie
        post :create, {:movie => valid_attributes}
        expect(assigns(:movie)).to be_a(Movie)
        expect(assigns(:movie)).to be_persisted
      end

      it "redirects to the created movie" do
        sign_in user_with_no_movie
        post :create, {:movie => valid_attributes}
        expect(response).to redirect_to(Movie.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved movie as @movie" do
        sign_in user_with_no_movie
        post :create, {:movie => invalid_attributes}
        expect(assigns(:movie)).to be_a_new(Movie)
      end

      it "re-renders the 'new' template" do
        sign_in user_with_no_movie
        post :create, {:movie => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { year: 2016, score: 4.5, actors: "Lily James, Bella Heathcote"}
      }

      it "updates the requested movie" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => new_attributes}
        movie.reload
        new_attributes.each_pair do |key, value|
          expect(movie[key]).to eq(value)
        end
      end

      it "assigns the requested movie as @movie" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => valid_attributes}
        expect(assigns(:movie)).to eq(movie)
      end

      it "redirects to the movie" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => valid_attributes}
        expect(response).to redirect_to(movie)
      end
    end

    context "with invalid params" do
      it "assigns the movie as @movie" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => invalid_attributes}
        expect(assigns(:movie)).to eq(movie)
      end

      it "re-renders the 'edit' template" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested movie" do
      sign_in user_with_movies
      movie = user_with_movies.movies.first
      expect {
        delete :destroy, {:id => movie.to_param}
      }.to change(Movie, :count).by(-1)
    end

    it "redirects to the movies list" do
      sign_in user_with_movies
      movie = user_with_movies.movies.first
      delete :destroy, {:id => movie.to_param}
      expect(response).to redirect_to(movies_url)
    end
  end

end
