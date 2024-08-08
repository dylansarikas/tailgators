Rails.application.routes.draw do
  
  # root "stadiums#index"
  root "pages#index"
  
  devise_for :users
  
  resources :stadiums, only: [:index]
  resources :tailgates, except: [:show, :edit]
  resources :advices, except: [:index, :show]
  resources :hotels, only: [:new, :create, :update]


  # get "hotels/:name" => "hotels#show", as: :hotel
  # Could do nested routes for hotels and tailgates

  get ":name" => "stadiums#show", as: :stadium

  get ":name/hotels" => "hotels#index", as: :hotels_by_stadium
  get "/hotels/:name" => "hotels#show", as: :hotel_by_stadium
  get "/hotels/:name/edit" => "hotels#edit", as: :edit_hotel

  get ":name/tailgates" => "tailgates#by_stadium", as: :tailgates_by_stadium
  get "/tailgates/:name" => "tailgates#show", as: :tailgate_by_stadium
  get "/tailgates/:name/edit" => "tailgates#edit", as: :edit_tailgate
end
