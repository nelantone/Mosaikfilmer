require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe MoviesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Movie. As you add validations to Movie, be sure to
  # adjust the attributes here as well.
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

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MoviesController. Be sure to keep this updated too.
  let(:valid_session) { { } } ## Pass arguments?`

  describe "GET #index" do
    it "assigns all movies as @movies" do
      sign_in user_with_movies #suppose to fail, I need to see if index has all movies
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
        post :create, {:movie => valid_attributes}, valid_session
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
        post :create, {:movie => invalid_attributes}, valid_session
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
        put :update, {:id => movie.to_param, :movie => valid_attributes}, valid_session
        expect(assigns(:movie)).to eq(movie)
      end

      it "redirects to the movie" do
        sign_in user_with_movies
        movie = user_with_movies.movies.first
        put :update, {:id => movie.to_param, :movie => valid_attributes}, valid_session
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
        put :update, {:id => movie.to_param, :movie => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested movie" do
      sign_in user_with_movies
      movie = user_with_movies.movies.first
      expect {
        delete :destroy, {:id => movie.to_param}, valid_session
      }.to change(Movie, :count).by(-1)
    end

    it "redirects to the movies list" do
      sign_in user_with_movies
      movie = user_with_movies.movies.first
      delete :destroy, {:id => movie.to_param}, valid_session
      expect(response).to redirect_to(movies_url)
    end
  end

end
