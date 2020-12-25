Rails.application.routes.draw do


  root 'home#index'

  resources :categorias, as: 'categories', controller: 'categories'
  resources :receitas, as: 'recipes', controller: 'recipes'

  devise_scope :user do
    get 'auth', to: 'devise/sessions#new', as: :new_user_session
    post 'auth', to: 'devise/sessions#create', as: :user_session
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session

  end
  devise_for :users, skip: [:sessions]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
