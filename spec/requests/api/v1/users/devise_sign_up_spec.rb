require 'rails_helper'

describe 'User can log in using the Weather API' do
  context 'When sending valid data' do
    it 'successfully sign up' do
      signup_params = { 
        email: "test_user@example.com",
        password: "asd123asd",
        password_confirmation: "asd123asd"
      }

      expect { post api_v1_user_registration_path, params: signup_params }.to change { User.count }.by(1)
    end
  end
end