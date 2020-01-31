Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'areas#index'
  resources :areas do
    resources :protocols do
      resources :tasks
    end
  end
end
