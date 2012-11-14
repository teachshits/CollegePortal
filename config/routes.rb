CollegePortal::Application.routes.draw do

  devise_for :users
  devise_for :users do 
    get 'sign_out' => 'devise/sessions#destroy'
    get "log_in", :to => "devise/sessions#new"
    get "sign_up", :to => "devise/registrations#new"
  end

  resources :news
  
  root :to => 'home#index'

end
