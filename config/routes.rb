Rails.application.routes.draw do
  root "pages#index"

  get "/features" => "pages#features"
  get "/faq" => "pages#faq"
  get "/about" => "pages#about"
  
  devise_for :users
  
  resources :stadiums, only: [:index]
  resources :tailgates, except: [:show, :edit]
  resources :advices, only: [:new, :show, :edit, :create, :update, :destroy]
  resources :hotels, only: [:new, :create, :update]
  resources :lots, except: [:index, :delete, :show, :edit]
  resources :restaurants, except: [:index, :delete, :show, :edit]
  resources :likes, only: [:create, :destroy]
  

  # get "hotels/:name" => "hotels#show", as: :hotel
  # Could do nested routes for hotels and tailgates

  get ":name" => "stadiums#show", as: :stadium

  get ":name/hotels" => "hotels#index", as: :hotels_by_stadium
  get "/hotels/:name" => "hotels#show", as: :hotel_by_stadium
  get "/hotels/:name/edit" => "hotels#edit", as: :edit_hotel

  get ":name/tailgates" => "tailgates#by_stadium", as: :tailgates_by_stadium
  get "/tailgates/:name" => "tailgates#show", as: :tailgate_by_stadium
  get "/tailgates/:name/edit" => "tailgates#edit", as: :edit_tailgate

  get ":name/lots" => "lots#index", as: :lots_by_stadium
  get "lots/:name" => "lots#show", as: :lot_by_stadium
  get "/lots/:name/edit" => "lots#edit", as: :edit_lot

  get ":name/restaurants" => "restaurants#index", as: :restaurants_by_stadium
  get "restaurants/:name" => "restaurants#show", as: :restaurant_by_stadium
  get "/restaurants/:name/edit" => "restaurants#edit", as: :edit_restaurant
end
