Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :areas do
    resources :protocols do
      resources :tasks do
        resources :feedbacks, only: [:new, :create]
      end
    end
  end
end
