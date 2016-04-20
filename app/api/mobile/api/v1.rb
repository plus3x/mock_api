class Mobile::API::V1 < Grape::API
  desc 'My wallet'
  params do
    requires :id, type: Integer, desc: 'Customer ID'
  end
  get 'customers/:id/wallet' do
    { id: params[:id] }
  end
end
