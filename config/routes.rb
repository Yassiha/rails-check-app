Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :areas do
    resources :feedbacks, only: [:new, :create]
    resources :protocols do
      resources :feedbacks, only: [:new, :create]
      resources :tasks do
        resources :feedbacks, only: [:new, :create]
      end
    end
  end
end
