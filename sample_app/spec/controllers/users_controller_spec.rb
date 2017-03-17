require 'rails_helper'

describe UsersController, :type => :controller do
  
  let(:user) { User.create!(email: 'something@something.com', password: 'test12345') }
  let(:user2) { User.create!(email: 'test@test.com', password: 'testtest') }
  
  describe 'GET #show' do

    context 'User is logged in' do
      before do
        sign_in user
      end

      it 'loads correct user details' do
        get :show, id: user.id
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end

      it 'User can not access user1 info' do
        get :show, id: user2.id
        expect(response).to have_http_status(200)
        expect(response).to be_success
      end
    end
    
    context 'User is not logged in' do
      it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to('/login')
      end
    end
  end
end