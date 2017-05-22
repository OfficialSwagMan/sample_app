require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get 'home'
      response.shoudl have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get 'home'
      response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "GET 'about'" do
    it "devrait réussir" do
      get 'about'
      response.should be_success
    end
    it "doit avoir le bon titre" do
      get 'home'
      response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | À propos")
    end
  end

end
