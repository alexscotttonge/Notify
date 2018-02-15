require 'spec_helper'
require 'rack/test'

describe 'App' do
  it 'loads homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end
end
