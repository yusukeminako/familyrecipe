Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  get 'posts/famile', to: 'posts#famile'
  get 'posts/show', to: 'posts#show'
  get 'posts/recipe', to: 'recipes#new'
  resources :contacts, only: [:new, :create] do
    collection do
      get 'confirm', to: 'contacts#confirm'
      post 'create', to: 'contacts#create'
      get 'done', to: 'contacts#done'
    end
  end
end
