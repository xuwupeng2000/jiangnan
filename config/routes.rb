Rails.application.routes.draw do
  resources :posts 

  resources :pages, :only => [] do
    get 'resume'
  end

  resources :messages

  root :to => 'pages#resume' 
end
