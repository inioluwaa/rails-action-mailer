Rails.application.routes.draw do
  resources :users
  resources :subscribers
  get 'welcome/home', to: 'welcome#home'
end
