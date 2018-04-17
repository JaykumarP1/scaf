require 'rails_helper'

describe NewsController, type: :controller do
  context 'GET #index' do
    it 'returns a sucess response' do
      get :index
      # expect(response).to be_success
       expect(response).to have_http_status(200)
     # assert_response :success
    end
  end
end

describe "POST create" do
  context "with invalid attributes" do
    it "should set errors" do
      news_params = FactoryGirl.attributes_for(:news)
      post :create, :news => news_params
      puts assigns(:news).errors.inspect
    end
  end
end