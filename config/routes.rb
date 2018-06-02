Rails.application.routes.draw do
  resources :historial_pacientes
  resources :plan_quirurgicos
  resources :medicos
  resources :clinicas
  resources :especialidads
  resources :pacientes
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :users, only: [:index, :show]

  devise_scope :user do
    authenticated :user do
      root 'bienvenido#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
    end
  end

  #root 'bienvenido#index'  
  resources :rols
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
