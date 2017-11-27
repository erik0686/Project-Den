Rails.application.routes.draw do
  
  devise_for :users
  resources :projects
  resources :project_user
  resources :users


  devise_scope :user do
    authenticated :user do
      root 'projects#index', as: :authenticated_root
    end
    unauthenticated :user do
      root "devise/sessions#new", as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
