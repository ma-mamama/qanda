Rails.application.routes.draw do
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
