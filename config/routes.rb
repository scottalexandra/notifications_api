Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :user do
        get '/notifications', to: 'notifications#index'
      end
    end
  end
end
