require 'rails_helper'

describe "post a location route", type: :request do

  before do
    post '/locations', params: { location_name: 'location_test', address: 'address_test', zip: '99999', category: 'category_test'}
  end

  it 'returns the location name' do
    expect(JSON.parse(response.body)['location_name']).to eq('location_test')
  end

  it 'returns the location address' do
    expect(JSON.parse(response.body)['address']).to eq('address_test')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end