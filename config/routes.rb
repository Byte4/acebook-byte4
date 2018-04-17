Rails.application.routes.draw do
  resources :dislikes
  resources :likes
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        :registrations => "users/registrations"
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticate_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :posts do
    resources :comments
    resources :likes
    resources :dislikes
  end

end
