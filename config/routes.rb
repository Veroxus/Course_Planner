Rails.application.routes.draw do
  root to: 'pages#home'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/courses_list', to: 'pages#courses_list'
end
