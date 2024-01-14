Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # get 'users/show' => 'users#show'
  resources :users, only: [:show]
  get '/mypage' => 'users#mypage'
  
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  

  # Defines the root path route ("/")
  root "questions#index"
  resources :questions do
    resources :answers do
      put :add_good, on: :member
      put :add_bestanswer, on: :member
    end
  end

  
end
