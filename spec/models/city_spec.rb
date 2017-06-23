require 'rails_helper'

RSpec.describe City, type: :model do
  let!(:city) { create(:city) }

  describe 'Validations' do
    it { should validate_presence_of(:name) }
  end

  describe "Factory" do
    it "creates a valid City" do
      expect(city).to be_valid
    end
  end
end
