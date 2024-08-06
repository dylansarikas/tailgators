Rails.application.routes.draw do
  
  # root "stadiums#index"
  root "pages#index"
  
  devise_for :users

  # why is this necessary REEEEEEEEEE
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  
  # resources :hotels, only: [:show]
  # resources :stadiums, only: [:index, :show]
  resources :stadiums, only: [:index]
  resources :tailgates
  resources :advices, except: [:index, :show]
  resources :hotels, except: [:index, :delete]

  # get "hotels/:name" => "hotels#show", as: :hotel
  get ":name" => "stadiums#show", as: :stadium
  get ":name/hotels" => "hotels#index", as: :hotels_by_stadium
  get ":name/tailgates" => "tailgates#by_stadium", as: :tailgates_by_stadium


  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
