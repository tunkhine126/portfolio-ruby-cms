Rails.application.routes.draw do
  get '/', to: 'landing#home', as: 'root'
  
  resources :articles, only: [:index, :show]
  resources :projects, only: [:index, :show]

end
