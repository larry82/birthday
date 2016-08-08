Rails.application.routes.draw do
  resource :pages
  root 'pages#index'
end
