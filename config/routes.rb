Rails.application.routes.draw do

  resources :sessions

  resources :users

  resources :blogposts

  root 'users#index'


  
  # get 'blogposts/' => 'blogposts#index', as: :blogposts
  
  # get 'blogposts/:id' => 'blogposts#show', as: :blogpost 
  
  # get 'blogposts/new' => 'blogposts#new', as: :new_blogpost

  # post 'blogposts/create' => 'blogposts#create'
  
  # get 'blogposts/:id/edit' => 'blogposts#edit', as: :edit_blogpost

  # patch 'blogposts/:id' => 'blogposts#update'
  
  # delete 'blogposts/:id' => 'blogposts#destroy'
  
end
