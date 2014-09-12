Rails.application.routes.draw do
  devise_for :users
  resources :posts, :only => [:index, :create, :new, :update, :edit, :destory] 

  resources :pages, :only => [] do
    get 'resume'
  end

  resources :messages

  root :to => 'pages#resume' 
end
