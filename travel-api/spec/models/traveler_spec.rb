require 'rails_helper'

RSpec.describe Traveler, type: :model do
  context 'build a traveler' do
    before { @traveler = FactoryGirl.build(:traveler) }

    subject { @traveler }

    it { is_expected.to respond_to(:first_name) }
    it { is_expected.to respond_to(:last_name) }
    it { is_expected.to respond_to(:gender) }
    it { is_expected.to respond_to(:birthday) }
  end
end
