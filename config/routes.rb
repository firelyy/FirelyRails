Rails.application.routes.draw do
  resources :event_users
  resources :events
	resources :users
	root 'pages#home'
	post 'authenticate', to: 'authentication#authenticate'
end
