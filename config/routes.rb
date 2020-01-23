Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  get 'posts/show', to: 'posts#show'
  get 'posts/recipe', to: 'recipes#new'
  get 'posts/contact', to: 'contacts#new'
  post 'posts/contact', to: 'contacts#create'
end
