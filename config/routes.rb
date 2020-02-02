Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'areas#index'
  get 'about', to: 'homepage#about'
  get 'hep', to: 'homepage#hep'

  resources :areas do
    resources :area_users
    resources :protocols do
      resources :tasks
    end
  end
end
