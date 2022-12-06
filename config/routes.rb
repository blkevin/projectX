Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"

  resources :mentors, only: %i[ index show ]
  resources :contents, only: %i[ index show new create destroy ]
  resources :experiences, only: %i[ new create ]
  resources :educations, only: %i[ new create ]
  resources :institutions, only: %i[ show ]
  resources :meetings, only: %i[ new create ]
  resources :preferences, only: %i[ new create ]
  resources :conversations, only: %i[ create ] do
    resources :messages, only: :create
  end

  get 'student_infos', to: 'pages#student_infos', as: :student_infos
end
