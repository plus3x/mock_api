class Mobile::API < Grape::API
  format :json
  content_type json: 'application/json;charset=utf-8'
  # prefix :api

  mount Mobile::API::V1 => '/api/v1'
end
