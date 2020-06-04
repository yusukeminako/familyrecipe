Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :new] do
    collection do
      get :servise
      get :instagram
    end
  end

  resources :recipes, only: [:index]

  resources :contacts, only: [:new, :create] do
    collection do
      get 'confirm', to: 'contacts#confirm'
      post 'create', to: 'contacts#create'
      get 'done', to: 'contacts#done'
      get 'newcontact', to: 'contacts#newcontact'
    end
  end
end
