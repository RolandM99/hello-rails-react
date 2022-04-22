Rails.application.routes.draw do
  # get 'first_pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  namespace :api, default: {format: :json} do
    namespace :v1,  default: {format: :json} do
      resources :greetings do
      end
    end
  end

  get '*page', to: 'first_pages#index', constraints: ->(req)do
    !req.xhr? && req.format.html?
  end
  root "first_pages#index"
end
