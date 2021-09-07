Rails.application.routes.draw do
  resources :teams do 
    resources :cars
  end

  root 'teams#index'
end
