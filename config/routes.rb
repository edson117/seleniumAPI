Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :testcases
      resources :steps
      resources :testsets
      resources :actions
      resources :locator_types

    end
  end
      

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
