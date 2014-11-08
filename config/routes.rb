Rails.application.routes.draw do

  get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'session#new', as: 'login'
  get 'logout', to: 'session#destroy', as: 'logout'

  resources :sessions

  resources :users

  resources :blogposts

  post 'blogposts/new_comment' => 'blogposts#new_comment', as: :new_comment

  root 'blogposts#index'


  
  # get 'blogposts/' => 'blogposts#index', as: :blogposts
  
  # get 'blogposts/:id' => 'blogposts#show', as: :blogpost 
  
  # get 'blogposts/new' => 'blogposts#new', as: :new_blogpost

  # post 'blogposts/create' => 'blogposts#create'
  
  # get 'blogposts/:id/edit' => 'blogposts#edit', as: :edit_blogpost

  # patch 'blogposts/:id' => 'blogposts#update'
  
  # delete 'blogposts/:id' => 'blogposts#destroy'
  
end
