Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  get 'posts/famile', to: 'posts#famile'
  get 'posts/anketo', to: 'posts#anketo'
  get 'posts/show', to: 'posts#show'
  get 'posts/recipe', to: 'recipes#new'
  get 'posts/contact', to: 'contacts#new'
  post 'posts/contact', to: 'contacts#create'
end
