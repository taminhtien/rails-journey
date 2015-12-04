require 'rails_helper'

describe V1::TravelersController do
  describe '#index' do
    def do_request
      get :index, format: :json
    end

    let!(:traveler) { create(:traveler) }

    it 'returns traveler information' do
      do_request
      expect(response.body).to match traveler.to_json
    end
  end
end
