Rails.application.routes.draw do
  root to: 'check_lists#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :check_lists, param: :token, format: true, defaults: { format: :html }, only: [:create, :show] do
    resources :items, only: [:create, :update, :show]

    member do
      get 'app'
      get 'manifest'
      get 'service_worker'
    end
  end
end
