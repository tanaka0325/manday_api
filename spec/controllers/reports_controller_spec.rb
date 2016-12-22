require 'rails_helper'
require 'reports_controller'

RSpec.describe ReportsController, type: :controller do
  let(:user) {FactoryGirl.create(:user)}
  let(:report) {FactoryGirl.create(:report, user: user)}
  let(:report_params) { FactoryGirl.attributes_for(:report, user_id: user.id) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: report.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { report: report_params }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    it "returns http success" do
      patch :update, params: {id: report.id, report: { body: "hello" }}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, params: { id: report.id }
      expect(response).to have_http_status(:success)
    end
  end

end
