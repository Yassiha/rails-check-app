Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :protocols do
    resources :tasks, only: %i[new create update delete]
  end
end
