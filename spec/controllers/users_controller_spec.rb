require 'rails_helper'
RSpec.describe NinjasController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #success" do
    it "returns http success" do
      get :success
      expect(response).to have_http_status(:success)
    end
  end
end
