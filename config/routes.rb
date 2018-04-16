Rails.application.routes.draw do
  resources :dislikes
  resources :likes
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        :registrations => "users/registrations"
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :likes
    resources :dislikes
  end
  root to: 'posts#index'

end
