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
  resources :tailgates, except: [:show, :edit]
  resources :advices, except: [:index, :show]
  resources :hotels, only: [:new, :edit, :create, :update]


  # get "hotels/:name" => "hotels#show", as: :hotel
  # Could do nested routes for hotels and tailgates
  get ":name" => "stadiums#show", as: :stadium
  get ":name/hotels" => "hotels#index", as: :hotels_by_stadium
  get ":name/tailgates" => "tailgates#by_stadium", as: :tailgates_by_stadium
  get "/hotels/:name" => "hotels#show", as: :hotel_by_stadium
  get "/tailgates/:name" => "tailgates#show", as: :tailgate_by_stadium
  get "/tailgates/:name/edit" => "tailgates#edit", as: :edit_tailgate

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
