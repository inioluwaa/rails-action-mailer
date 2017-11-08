Rails.application.routes.draw do
  resources :users
  resources :subscribers
  root 'welcome#home'
end
