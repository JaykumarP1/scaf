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