require 'rails_helper'

describe "Weather API" do
  let!(:test_user) { create(:user) }
  let!(:city) { create(:city) }

  context 'When user is logged in' do
    it 'GET#show returns success status' do
      get api_v1_weathers_path(name: city.name), headers: login_headers

      expect(response).to have_http_status(:success)
      expect(json['weather']).to be_present
      expect(json['weather']).to eq(city.weather)
    end

    it 'GET#show with invalid city name returns bad request status' do
      get api_v1_weathers_path(name: "fake_city"), headers: login_headers

      expect(response).to have_http_status(:bad_request)
      expect(json['message']).to eq("Invalid City")
    end
  end

  context 'When user isnt logged' do
    it 'GET#show returns unauthorized status' do
      get api_v1_weathers_path(name: city.name)

      expect(response).to have_http_status(:unauthorized)
      expect(json['errors']).to include('You need to sign in or sign up before continuing.')
    end
  end
end
