require 'rails_helper'
require 'tasks_controller'

RSpec.describe TasksController, type: :controller do
  let(:user) {FactoryGirl.create(:user)}
  let(:task) {FactoryGirl.create(:task, user: user)}
  let(:task_params) { FactoryGirl.attributes_for(:task, user_id: user.id) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: task.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { task: task_params }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    it "returns http success" do
      patch :update, params: {id: task.id, task: { body: "hello" }}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, params: { id: task.id }
      expect(response).to have_http_status(:success)
    end
  end

end
