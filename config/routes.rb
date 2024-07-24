Rails.application.routes.draw do
  root "stadiums#index"
  
  resources :hotels, only: [:index, :show]
  resources :stadiums, only: [:index, :show]
  resources :tailgates, only: [:index, :show]
  resources :advices, except: [:index]
  devise_for :users

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
