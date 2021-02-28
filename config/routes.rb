Rails.application.routes.draw do
  get '/', to: 'landing#home', as: 'root'
  
  resources :articles, only: [:index, :show]
  resources :projects, only: [:index, :show]

  get 'about', to: 'landing#about'  

  match "/404", :to => "errors#page_not_found", :via => :all
  match "/500", :to => "errors#server_error", :via => :all

end
