require 'api_contraints'

MarketPlaceApi::Application.routes.draw do
  # Api definition
  namespace :api, defaults: { format: :json ,
                              constraints: { subdomain: 'api' }, path: '/'} do
    scope module: :v1,
          constraints: ApiContraints.new(version: 1, default: true) do
      # We are going to list our resources here
    end
  end
end
