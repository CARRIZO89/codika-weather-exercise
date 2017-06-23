require 'rails_helper'

describe 'User can log in using the Weather API' do
  let!(:test_user) { create(:user) }

  context 'When sending valid data' do
    it 'successfully logs in' do
      login_params = { email: "test_user@example.com", password: "asd123asd" }
      post api_v1_user_session_path, params: login_params
      client_id = response.headers['client']
      token = response.headers['access-token']

      expect(response).to have_http_status(:success)
      expect(test_user.reload.valid_token?(token, client_id)).to be_truthy
    end
  end

  context 'When sending invalid data' do
    it 'returns unauthorized status' do
      login_params = { email: "test_user@example.com", password: "incorrectpassword" }
      post api_v1_user_session_path, params: login_params

      expect(response).to have_http_status(:unauthorized)
      expect(json['errors']).to include("Invalid login credentials. Please try again.")
    end
  end
end