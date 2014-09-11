Rails.application.routes.draw do
  devise_for :users
  resources :posts 

  resources :pages, :only => [] do
    get 'resume'
  end

  resources :messages

  root :to => 'pages#resume' 
end
