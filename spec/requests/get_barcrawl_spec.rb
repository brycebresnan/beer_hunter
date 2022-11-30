require 'rails_helper'

describe "get barcrawl route", type: :request do
  let!(:locations) { FactoryBot.create_list(:location, 20)}

  before { get '/barcrawl?=33813'}

  it 'returns 0 - 4 random locations that matches zip' do
    expect(JSON.parse(response.body).size).to be_between(0,4).inclusive
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
