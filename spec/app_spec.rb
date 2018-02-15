require 'spec_helper'
require 'rack/test'

describe 'App' do
  it 'loads homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end

  it 'posts to success channel' do
    post '/notification/success'
    expect(last_response.status).to eq 200
  end
end
