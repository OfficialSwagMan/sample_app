require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  @base_title = "Simple App du Tutoriel Ruby on Rails"

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :home
      expect(response.body).to have_selector('title', :text => 'Simple App du Tutoriel Ruby on Rails | Accueil')
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :contact
      expect(response.body).to have_selector('title', :text => 'Simple App du Tutoriel Ruby on Rails | Contact')
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :about
      expect(response.body).to have_selector('title', :text => 'Simple App du Tutoriel Ruby on Rails | À propos')
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
    it "doit avoir le bon titre" do
      get :help
      expect(response.body).to have_selector('title', :text => @base_title + " | Aide")
    end
  end

end
