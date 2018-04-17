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

# describe NewsController do
#   describe "GET index" do
#     it "assigns @news" do
#       news = News.create
#       get :index
#       expect(assigns(:news)).to eq([news])
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end
# end

describe NewsController, type: :controller do
  describe "responds to" do
    it "responds to html by default" do
      post :create, params: { news: { s_no: "asd" ,title: "Any Name",url: "url" } }
      expect(response.content_type).to eq "text/html"
    end
  end
end