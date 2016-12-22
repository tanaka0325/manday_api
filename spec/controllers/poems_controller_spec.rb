require 'rails_helper'
require 'poems_controller'

RSpec.describe PoemsController, type: :controller do
  let(:user) {FactoryGirl.create(:user)}
  let(:poem) {FactoryGirl.create(:poem, user: user)}
  let(:poem_params) { FactoryGirl.attributes_for(:poem, user_id: user.id) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: poem.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { poem: poem_params }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    it "returns http success" do
      patch :update, params: {id: poem.id, poem: { body: "hello" }}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, params: { id: poem.id }
      expect(response).to have_http_status(:success)
    end
  end

end
