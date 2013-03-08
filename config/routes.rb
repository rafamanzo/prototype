Prototye::Application.routes.draw do
  resources :accounts

  devise_for :users

  root :to => "main#home"
end
