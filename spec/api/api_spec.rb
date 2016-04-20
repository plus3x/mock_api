describe 'API', type: :request do
  it '/api/v1/customers/:id/wallet.json' do
    get '/api/v1/customers/12/wallet.json'

    expect(response.body).to eq({ id: 12 }.to_json)
  end
end
