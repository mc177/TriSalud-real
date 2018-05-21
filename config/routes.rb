Rails.application.routes.draw do
  resources :servicios
  resources :historial_pacientes
  resources :plan_quirurgicos
  resources :medicos
  resources :clinicas
  resources :especialidads
  resources :pacientes
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'bienvenido#index'  
  resources :rols
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
