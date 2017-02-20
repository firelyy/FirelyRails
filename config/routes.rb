Rails.application.routes.draw do
  resources :chats
  resources :gameplan_users
  resources :gameplans
	resources :users
	root 'pages#home'
	post 'authenticate', to: 'authentication#authenticate'
end
