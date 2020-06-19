Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {
               sign_up: '',
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions',
               passwords: 'users/passwords'
             }
  devise_scope :user do
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
end
